#!/usr/bin/env python3
import os
import sys

print("=== Диагностика Kleinanzeigen Scanner ===")
print("Текущая директория:", os.getcwd())
print("Python путь:", sys.executable)
print()

# Проверяем файлы
files_to_check = [
    "kleinanzeigen_scanner.py",
    "KleinanzeigenConfig.py", 
    "simple_bot.py"
]

for file in files_to_check:
    exists = os.path.exists(file)
    status = "✅ Найден" if exists else "❌ Не найден"
    print(f"📁 {file}: {status}")

print()

# Проверяем импорт конфигурации
try:
    import KleinanzeigenConfig
    print("⚙️ Конфигурация: ✅ Загружена")
    print(f"🔧 Топиков настроено: {len(KleinanzeigenConfig.topics)}")
    for name, config in KleinanzeigenConfig.topics.items():
        print(f"   - {name}: {config['query']['q']}")
except Exception as e:
    print(f"⚙️ Конфигурация: ❌ Ошибка - {e}")

print()

# Проверяем запуск сканера
try:
    print("🔍 Тестируем импорт сканера...")
    import kleinanzeigen_scanner
    print("✅ Сканер импортирован успешно")
except Exception as e:
    print(f"❌ Ошибка импорта сканера: {e}")

print("\n=== Диагностика завершена ===")
input("Нажмите Enter для выхода...")
