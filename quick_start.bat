@echo off
cd /d "%~dp0"
start "Bot" cmd /k python simple_bot.py
timeout /t 2 /nobreak >nul
start "Scanner" cmd /k python kleinanzeigen_scanner.py
echo Started! Check the two new windows.
pause
