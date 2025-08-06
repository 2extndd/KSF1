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
del kleinanzeigen_scanner.log 2>nul
del kleinanzeigen_items.txt 2>nul
del *.log 2>nul
del *.temp 2>nul
rmdir /s /q temp 2>nul
rmdir /s /q __pycache__ 2>nul
del /s /q *.pyc 2>nul

echo.
echo 3. Очищаем кэш Python...
python -Bc "import compileall; compileall.compile_dir('.', force=True)" 2>nul

echo.
echo 4. Проверяем что очищено...
dir *.log 2>nul
if %errorlevel% equ 0 (
    echo ВНИМАНИЕ: Остались файлы логов!
) else (
    echo Логи успешно очищены
)

echo.
echo 5. Запускаем проект...
echo Выберите вариант запуска:
echo 1. Полный запуск (сканер + бот)
echo 2. Только сканер
echo 3. Только бот
echo 4. Тестовый запуск
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