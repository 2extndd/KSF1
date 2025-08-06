@echo off
echo ========================================
echo БЫСТРАЯ ОЧИСТКА И ПЕРЕЗАПУСК
echo ========================================

echo.
echo 1. Останавливаем процессы...
taskkill /f /im python.exe 2>nul

echo.
echo 2. Очищаем логи...
del kleinanzeigen_scanner.log 2>nul
del kleinanzeigen_items.txt 2>nul
del *.log 2>nul

echo.
echo 3. Запускаем проект...
call start_all.bat

echo.
echo ========================================
echo ГОТОВО!
echo ======================================== 