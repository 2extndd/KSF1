@echo off
echo === Проверка файлов ===
dir kleinanzeigen_scanner.*
echo.
echo === Тест запуска сканера ===
python kleinanzeigen_scanner.py
pause
