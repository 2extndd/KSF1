#!/usr/bin/env python3
"""
Простой Telegram Bot для Kleinanzeigen Scanner
Основные команды без сложных функций
"""

import os
import subprocess
import logging
import sys
from telegram import Update
from telegram.ext import Application, CommandHandler, ContextTypes

# Очистка кэша модулей
if 'KleinanzeigenConfig' in sys.modules:
    del sys.modules['KleinanzeigenConfig']

import KleinanzeigenConfig

# Настройка логирования
logging.basicConfig(
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    level=logging.INFO
)
logger = logging.getLogger(__name__)

LOG_FILE = "kleinanzeigen_scanner.log"
SCANNER_SCRIPT = "kleinanzeigen_scanner.py"

async def start(update: Update, context: ContextTypes.DEFAULT_TYPE) -> None:
    """Обработчик команды /start"""
    help_text = """
🤖 <b>Kleinanzeigen Scanner Bot</b>

Доступные команды:
/status2 - Расширенный статус
/threadid2 - Показать ID топиков
/restart2 - Принудительный перезапуск
/log2 - Последние 20 строк лога

<i>Бот сканирует Kleinanzeigen.de и отправляет уведомления.</i>
    """
    await update.message.reply_text(help_text, parse_mode='HTML')

async def show_threadid2(update: Update, context: ContextTypes.DEFAULT_TYPE) -> None:
    """Показать ID топиков"""
    try:
        thread_text = "🎯 <b>ID топиков в конфигурации:</b>\n\n"
        for name, config in KleinanzeigenConfig.topics.items():
            thread_text += f"• <b>{name}</b>\n"
            thread_text += f"  Thread ID: <code>{config['thread_id']}</code>\n"
            thread_text += f"  Показывать при запуске: {config.get('summary_count', 5)}\n\n"
        
        await update.message.reply_text(thread_text, parse_mode='HTML')
    except Exception as e:
        await update.message.reply_text(f"❌ Ошибка: {e}")

async def show_log2(update: Update, context: ContextTypes.DEFAULT_TYPE) -> None:
    """Показать последние 20 строк лога"""
    try:
        if os.path.exists(LOG_FILE):
            with open(LOG_FILE, 'r', encoding='utf-8', errors='ignore') as f:
                lines = f.readlines()
                last_lines = lines[-20:] if len(lines) >= 20 else lines
                log_text = ''.join(last_lines)
                
            if log_text:
                # Экранируем HTML символы для безопасного отображения
                import html
                log_text = html.escape(log_text)
                
                message = f"📋 <b>Последние 20 строк лога:</b>\n\n<pre>{log_text}</pre>"
                if len(message) > 4000:
                    message = message[:4000] + "...\n<i>[обрезано]</i>"
                await update.message.reply_text(message, parse_mode='HTML')
            else:
                await update.message.reply_text("📋 Лог файл пуст")
        else:
            await update.message.reply_text("❌ Файл лога не найден")
    except Exception as e:
        await update.message.reply_text(f"❌ Ошибка: {e}")

async def show_status2(update: Update, context: ContextTypes.DEFAULT_TYPE) -> None:
    """Расширенный статус"""
    try:
        scanner_running = False
        try:
            # Проверка запущенных процессов в Windows
            result = subprocess.run(["tasklist", "/fi", "IMAGENAME eq python.exe"], capture_output=True, text=True)
            if SCANNER_SCRIPT in result.stdout or "kleinanzeigen_scanner" in result.stdout:
                scanner_running = True
        except:
            pass
        
        # Статистика лога
        log_lines = 0
        if os.path.exists(LOG_FILE):
            try:
                with open(LOG_FILE, 'r') as f:
                    log_lines = sum(1 for _ in f)
            except:
                pass
        
        status_text = f"""
🔍 <b>Расширенный статус Kleinanzeigen Scanner</b>

🤖 Сканер: {'🟢 Запущен' if scanner_running else '🔴 Остановлен'}
📄 Лог файл: {'🟢 Найден' if os.path.exists(LOG_FILE) else '🔴 Не найден'}
⚙️ Конфигурация: {'🟢 Найдена' if os.path.exists("KleinanzeigenConfig.py") else '🔴 Не найдена'}

📊 <b>Статистика:</b>
📝 Строк в логе: {log_lines}
🔧 Топиков настроено: {len(KleinanzeigenConfig.topics)}

💡 Используйте /restart2 для принудительного перезапуска
        """
        await update.message.reply_text(status_text, parse_mode='HTML')
    except Exception as e:
        await update.message.reply_text(f"❌ Ошибка: {e}")

async def restart_scanner2(update: Update, context: ContextTypes.DEFAULT_TYPE) -> None:
    """Принудительный перезапуск"""
    try:
        await update.message.reply_text("🔄 Принудительный перезапуск...")
        
        try:
            # Остановка Python процессов в Windows
            subprocess.run(["taskkill", "/f", "/im", "python.exe"], check=False)
            await update.message.reply_text("⚠️ Все процессы остановлены")
        except:
            pass
        
        import time
        time.sleep(3)
        
        # Очистка кэша конфигурации
        if 'KleinanzeigenConfig' in sys.modules:
            del sys.modules['KleinanzeigenConfig']
        
        # Перезагрузка конфигурации
        import importlib
        import KleinanzeigenConfig
        importlib.reload(KleinanzeigenConfig)
        
        await update.message.reply_text(f"📊 Загружено топиков: {len(KleinanzeigenConfig.topics)}")
        
        # Запуск для Windows с указанием рабочей директории
        import os
        current_dir = os.path.dirname(os.path.abspath(__file__))
        scanner_path = os.path.join(current_dir, SCANNER_SCRIPT)
        
        # Проверяем, существует ли файл сканера
        if not os.path.exists(scanner_path):
            await update.message.reply_text(f"❌ Файл {SCANNER_SCRIPT} не найден!")
            return
        
        # Запускаем сканер
        process = subprocess.Popen(
            ["python", scanner_path], 
            shell=True, 
            cwd=current_dir,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE
        )
        
        await update.message.reply_text(f"✅ Сканер запущен! PID: {process.pid}")
        
        # Проверяем, запустился ли процесс
        time.sleep(2)
        if process.poll() is None:
            await update.message.reply_text("🔍 Сканер работает корректно!")
        else:
            # Процесс завершился, читаем ошибки
            stdout, stderr = process.communicate()
            error_msg = stderr.decode('utf-8', errors='ignore') if stderr else "Неизвестная ошибка"
            await update.message.reply_text(f"❌ Сканер завершился с ошибкой:\n{error_msg[:500]}")
        
    except Exception as e:
        await update.message.reply_text(f"❌ Ошибка: {e}")

async def error_handler(update: Update, context: ContextTypes.DEFAULT_TYPE) -> None:
    """Обработчик ошибок"""
    logger.error(f"Update {update} caused error {context.error}")
    if "Conflict" in str(context.error):
        logger.error("Bot conflict detected - another instance may be running")

def main():
    """Запуск бота"""
    print("🤖 Kleinanzeigen Telegram Bot запущен!")
    logger.info("Kleinanzeigen Telegram Bot started")
    
    # Создаем приложение с дополнительными параметрами для избежания конфликтов
    application = Application.builder().token(KleinanzeigenConfig.telegram_bot_token).build()
    
    # Добавляем обработчики команд
    application.add_handler(CommandHandler("start", start))
    application.add_handler(CommandHandler("threadid2", show_threadid2))
    application.add_handler(CommandHandler("log2", show_log2))
    application.add_handler(CommandHandler("status2", show_status2))
    application.add_handler(CommandHandler("restart2", restart_scanner2))
    
    # Добавляем обработчик ошибок
    application.add_error_handler(error_handler)
    
    # Пытаемся запустить бота с retry логикой
    max_retries = 3
    for attempt in range(max_retries):
        try:
            print(f"🔄 Попытка подключения {attempt + 1}/{max_retries}...")
            application.run_polling(allowed_updates=Update.ALL_TYPES)
            break  # Если успешно, выходим из цикла
        except Exception as e:
            logger.error(f"Bot error attempt {attempt + 1}: {e}")
            print(f"❌ Ошибка попытки {attempt + 1}: {e}")
            
            if "Conflict" in str(e) and attempt < max_retries - 1:
                print(f"🔄 Конфликт обнаружен. Ждем {10 * (attempt + 1)} секунд перед следующей попыткой...")
                import time
                time.sleep(10 * (attempt + 1))  # Увеличиваем задержку с каждой попыткой
                
                # Пересоздаем приложение
                application = Application.builder().token(KleinanzeigenConfig.telegram_bot_token).build()
                application.add_handler(CommandHandler("start", start))
                application.add_handler(CommandHandler("threadid2", show_threadid2))
                application.add_handler(CommandHandler("log2", show_log2))
                application.add_handler(CommandHandler("status2", show_status2))
                application.add_handler(CommandHandler("restart2", restart_scanner2))
                application.add_error_handler(error_handler)
            else:
                print(f"❌ Все попытки исчерпаны или критическая ошибка: {e}")
                break

if __name__ == "__main__":
    main()
