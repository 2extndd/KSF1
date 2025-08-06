@echo off
echo ========================================
echo ПРЕДВАРИТЕЛЬНЫЙ ПРОСМОТР ОЧИСТКИ
echo ========================================

echo.
echo ФАЙЛЫ, КОТОРЫЕ БУДУТ УДАЛЕНЫ:
echo.

echo === BAT файлы для коммитов ===
if exist commit_bat_files.bat echo - commit_bat_files.bat
if exist force_new_commit.bat echo - force_new_commit.bat
if exist check_and_commit_config.bat echo - check_and_commit_config.bat
if exist commit_current_config.bat echo - commit_current_config.bat
if exist force_commit_config.bat echo - force_commit_config.bat
if exist commit_config_changes.bat echo - commit_config_changes.bat
if exist commit_specific_changes.bat echo - commit_specific_changes.bat
if exist commit_all_changes.bat echo - commit_all_changes.bat
if exist force_commit_changes.bat echo - force_commit_changes.bat
if exist commit_to_github_safe.bat echo - commit_to_github_safe.bat
if exist commit_to_github_fixed.bat echo - commit_to_github_fixed.bat
if exist commit_to_github.bat echo - commit_to_github.bat
if exist commit_changes.ps1 echo - commit_changes.ps1
if exist commit_changes.bat echo - commit_changes.bat
if exist upload_to_github.bat echo - upload_to_github.bat
if exist update_github.bat echo - update_github.bat
if exist check_config_history.bat echo - check_config_history.bat

echo.
echo === Тестовые файлы ===
if exist test_topics.py echo - test_topics.py
if exist test_scanner.bat echo - test_scanner.bat
if exist test_new_config.py echo - test_new_config.py
if exist test_config_simple.py echo - test_config_simple.py
if exist test_config.py echo - test_config.py
if exist simple_test.py echo - simple_test.py
if exist minimal_test.py echo - minimal_test.py

echo.
echo === Лишние bat файлы ===
if exist ultimate_fix.bat echo - ultimate_fix.bat
if exist force_restart.bat echo - force_restart.bat
if exist diagnose.py echo - diagnose.py
if exist check_categories.py echo - check_categories.py
if exist release_v1.0.bat echo - release_v1.0.bat
if exist quick_start.bat echo - quick_start.bat

echo.
echo === Лишние конфигурационные файлы ===
if exist KleinanzeigenConfig_new.py echo - KleinanzeigenConfig_new.py

echo.
echo === Лишняя документация ===
if exist LOCAL_USAGE.md echo - LOCAL_USAGE.md
if exist GITHUB_UPLOAD_INSTRUCTIONS.md echo - GITHUB_UPLOAD_INSTRUCTIONS.md
if exist KLEINANZEIGEN_README.md echo - KLEINANZEIGEN_README.md

echo.
echo === Логи и временные файлы ===
if exist kleinanzeigen_scanner.log echo - kleinanzeigen_scanner.log
if exist kleinanzeigen_items.txt echo - kleinanzeigen_items.txt
if exist __pycache__ echo - __pycache__ (папка)

echo.
echo ========================================
echo ВНИМАНИЕ: Это предварительный просмотр!
echo.
echo Для удаления файлов запустите: cleanup_project.bat
echo ========================================
pause 