@echo off
echo ========================================
echo ОЧИСТКА ЛОГОВ И ПЕРЕЗАПУСК ПРОЕКТА
echo ========================================

echo.
echo 1. Останавливаем все процессы Python...
taskkill /f /im python.exe 2>nul
taskkill /f /im pythonw.exe 2>nul

echo.
echo 2. Очищаем логи и временные файлы...
if exist kleinanzeigen_scanner.log del kleinanzeigen_scanner.log
if exist kleinanzeigen_items.txt del kleinanzeigen_items.txt
if exist *.log del *.log
if exist *.temp del *.temp
if exist temp rmdir /s /q temp
if exist __pycache__ rmdir /s /q __pycache__

echo.
echo 3. Проверяем очистку...
echo Логи очищены!

echo.
echo 4. Запускаем проект...
echo.
echo Выберите вариант запуска:
echo [1] Полный запуск (сканер + бот)
echo [2] Только сканер
echo [3] Только бот
echo [4] Тестовый режим
echo.
set /p choice="Введите номер (1-4): "

if "%choice%"=="1" (
    echo.
    echo Запускаем полный проект...
    call start_all.bat
) else if "%choice%"=="2" (
    echo.
    echo Запускаем только сканер...
    python kleinanzeigen_scanner.py
) else if "%choice%"=="3" (
    echo.
    echo Запускаем только бот...
    python simple_bot.py
) else if "%choice%"=="4" (
    echo.
    echo Запускаем тестовый режим...
    python test_config_simple.py
) else (
    echo.
    echo Неверный выбор. Запускаем полный проект...
    call start_all.bat
)

echo.
echo ========================================
echo ПРОЕКТ ЗАПУЩЕН!
echo ========================================
pause 