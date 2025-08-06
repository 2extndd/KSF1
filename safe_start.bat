@echo off
title Kleinanzeigen Launcher
cd /d "%~dp0"

echo ==========================================
echo   Kleinanzeigen Bot and Scanner Launcher
echo ==========================================
echo.

echo [1/4] Stopping any existing processes...
taskkill /f /im python.exe >nul 2>&1
taskkill /f /im cmd.exe /fi "WINDOWTITLE eq Bot*" >nul 2>&1
taskkill /f /im cmd.exe /fi "WINDOWTITLE eq Scanner*" >nul 2>&1

echo [2/4] Waiting for cleanup...
timeout /t 3 /nobreak >nul

echo [3/4] Starting Telegram Bot...
start "Kleinanzeigen Bot" cmd /c "title Kleinanzeigen Bot && python simple_bot.py && pause"

echo [4/4] Waiting and starting Scanner...
timeout /t 4 /nobreak >nul
start "Kleinanzeigen Scanner" cmd /c "title Kleinanzeigen Scanner && python kleinanzeigen_scanner.py && pause"

echo.
echo ✅ Both processes started successfully!
echo   📱 Telegram Bot: "Kleinanzeigen Bot" window
echo   🔍 Scanner: "Kleinanzeigen Scanner" window
echo.
echo Press any key to close this launcher...
pause >nul
