@echo off
title ULTIMATE FIX - Kleinanzeigen
cd /d "%~dp0"

echo ==========================================
echo   ULTIMATE FIX - Kleinanzeigen Scanner
echo ==========================================
echo.

echo [STEP 1] Killing ALL processes...
wmic process where "name='python.exe'" delete >nul 2>&1
taskkill /f /im python.exe >nul 2>&1
taskkill /f /im cmd.exe /fi "WINDOWTITLE eq *Bot*" >nul 2>&1
taskkill /f /im cmd.exe /fi "WINDOWTITLE eq *Scanner*" >nul 2>&1
taskkill /f /im cmd.exe /fi "WINDOWTITLE eq *Kleinanzeigen*" >nul 2>&1

echo [STEP 2] Waiting for full cleanup (15 seconds)...
timeout /t 15 /nobreak

echo [STEP 3] Clearing Telegram webhook...
python clear_webhook.py

echo [STEP 4] Additional wait (5 seconds)...
timeout /t 5 /nobreak

echo [STEP 5] Clearing logs...
del kleinanzeigen_scanner.log 2>nul
del kleinanzeigen_items.txt 2>nul

echo [STEP 6] Starting Bot with retry logic...
start "ULTIMATE-Bot" cmd /c "title ULTIMATE Bot && python simple_bot.py && pause"

echo [STEP 7] Waiting and starting Scanner...
timeout /t 8 /nobreak
start "ULTIMATE-Scanner" cmd /c "title ULTIMATE Scanner && python kleinanzeigen_scanner.py && pause"

echo.
echo ✅ ULTIMATE FIX COMPLETED!
echo   📱 Bot: "ULTIMATE Bot" (with retry logic)
echo   🔍 Scanner: "ULTIMATE Scanner"
echo.
echo This should resolve all Conflict issues!
pause
