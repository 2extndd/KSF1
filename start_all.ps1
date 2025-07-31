# Kleinanzeigen Bot and Scanner Launcher
Write-Host "🤖 Starting Kleinanzeigen Bot and Scanner..." -ForegroundColor Green
Set-Location $PSScriptRoot

Write-Host "`n📱 Starting Telegram Bot..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "python simple_bot.py" -WindowStyle Normal

Write-Host "⏳ Waiting 3 seconds before starting scanner..." -ForegroundColor Cyan
Start-Sleep -Seconds 3

Write-Host "`n🔍 Starting Kleinanzeigen Scanner..." -ForegroundColor Yellow
Start-Process powershell -ArgumentList "-NoExit", "-Command", "python kleinanzeigen_scanner.py" -WindowStyle Normal

Write-Host "`n✅ Both processes started successfully!" -ForegroundColor Green
Write-Host "  • Telegram Bot: First PowerShell window" -ForegroundColor White
Write-Host "  • Scanner: Second PowerShell window" -ForegroundColor White
Write-Host "`n📝 Use /restart2 in Telegram to restart scanner if needed" -ForegroundColor Cyan

Read-Host "`nPress Enter to exit launcher"
