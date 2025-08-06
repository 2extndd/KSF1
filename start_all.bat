@echo off
echo Starting Kleinanzeigen Bot and Scanner...
cd /d "%~dp0"

echo.
echo Starting Telegram Bot...
start "Telegram Bot" cmd /k "python simple_bot.py"

echo.
echo Waiting 3 seconds before starting scanner...
timeout /t 3 /nobreak >nul

echo.
echo Starting Kleinanzeigen Scanner...
start "Kleinanzeigen Scanner" cmd /k "python kleinanzeigen_scanner.py"

echo.
echo Both processes started!
echo - Telegram Bot: Check first window
echo - Scanner: Check second window
echo.
pause
