@echo off
echo ========================================
echo ОЧИСТКА ПРОЕКТА ОТ ЛИШНИХ ФАЙЛОВ
echo ========================================

echo.
echo 1. Останавливаем процессы...
taskkill /f /im python.exe 2>nul

echo.
echo 2. Удаляем лишние bat файлы для коммитов...
del commit_bat_files.bat 2>nul
del force_new_commit.bat 2>nul
del check_and_commit_config.bat 2>nul
del commit_current_config.bat 2>nul
del force_commit_config.bat 2>nul
del commit_config_changes.bat 2>nul
del commit_specific_changes.bat 2>nul
del commit_all_changes.bat 2>nul
del force_commit_changes.bat 2>nul
del commit_to_github_safe.bat 2>nul
del commit_to_github_fixed.bat 2>nul
del commit_to_github.bat 2>nul
del commit_changes.ps1 2>nul
del commit_changes.bat 2>nul
del upload_to_github.bat 2>nul
del update_github.bat 2>nul
del check_config_history.bat 2>nul

echo.
echo 3. Удаляем тестовые файлы...
del test_topics.py 2>nul
del test_scanner.bat 2>nul
del test_new_config.py 2>nul
del test_config_simple.py 2>nul
del test_config.py 2>nul
del simple_test.py 2>nul
del minimal_test.py 2>nul

echo.
echo 4. Удаляем лишние bat файлы...
del ultimate_fix.bat 2>nul
del force_restart.bat 2>nul
del diagnose.py 2>nul
del check_categories.py 2>nul
del release_v1.0.bat 2>nul
del quick_start.bat 2>nul

echo.
echo 5. Удаляем лишние конфигурационные файлы...
del KleinanzeigenConfig_new.py 2>nul

echo.
echo 6. Удаляем лишнюю документацию...
del LOCAL_USAGE.md 2>nul
del GITHUB_UPLOAD_INSTRUCTIONS.md 2>nul
del KLEINANZEIGEN_README.md 2>nul

echo.
echo 7. Очищаем логи и временные файлы...
del kleinanzeigen_scanner.log 2>nul
del kleinanzeigen_items.txt 2>nul
del *.log 2>nul
rmdir /s /q __pycache__ 2>nul

echo.
echo 8. Оставляем только необходимые файлы...
echo.
echo ОСТАВЛЕННЫЕ ФАЙЛЫ:
echo - kleinanzeigen_scanner.py (основной сканер)
echo - simple_bot.py (Telegram бот)
echo - KleinanzeigenConfig.py (конфигурация)
echo - requirements.txt (зависимости)
echo - README.md (основная документация)
echo - CHANGELOG.md (история изменений)
echo - VERSION.md (версия)
echo - start_all.bat (запуск проекта)
echo - start_all.ps1 (запуск проекта)
echo - restart_project.bat (перезапуск)
echo - quick_clean.bat (быстрая очистка)
echo - clean_and_restart.bat (полная очистка)
echo - setup_git.bat (настройка Git)
echo - setup_git.ps1 (настройка Git)
echo - safe_start.bat (безопасный запуск)
echo - start_bot.bat (запуск бота)
echo - clear_webhook.py (очистка webhook)

echo.
echo ========================================
echo ОЧИСТКА ЗАВЕРШЕНА!
echo ========================================
pause 