@echo off
title FORCE Restart Kleinanzeigen
cd /d "%~dp0"

echo ==========================================
echo   FORCE RESTART - Kleinanzeigen Scanner
echo ==========================================
echo.

echo [STEP 1] Killing ALL Python processes...
wmic process where "name='python.exe'" delete >nul 2>&1
taskkill /f /im python.exe >nul 2>&1

echo [STEP 2] Killing CMD windows...
taskkill /f /im cmd.exe /fi "WINDOWTITLE eq *Bot*" >nul 2>&1
taskkill /f /im cmd.exe /fi "WINDOWTITLE eq *Scanner*" >nul 2>&1
taskkill /f /im cmd.exe /fi "WINDOWTITLE eq *Kleinanzeigen*" >nul 2>&1

echo [STEP 3] Waiting for cleanup (10 seconds)...
timeout /t 10 /nobreak

echo [STEP 4] Clearing logs...
del kleinanzeigen_scanner.log 2>nul
del kleinanzeigen_items.txt 2>nul

echo [STEP 5] Starting fresh Bot...
start "Kleinanzeigen-Bot-FRESH" cmd /c "title Kleinanzeigen Bot FRESH && python simple_bot.py && pause"

echo [STEP 6] Waiting and starting Scanner...
timeout /t 6 /nobreak
start "Kleinanzeigen-Scanner-FRESH" cmd /c "title Kleinanzeigen Scanner FRESH && python kleinanzeigen_scanner.py && pause"

echo.
echo ✅ FORCE RESTART COMPLETED!
echo   📱 Bot: "Kleinanzeigen Bot FRESH" 
echo   🔍 Scanner: "Kleinanzeigen Scanner FRESH"
echo.
pause
