@echo off
echo ========================================
echo ЗАГРУЗКА ИЗМЕНЕНИЙ В KLEINANZEIGENCONFIG.PY
echo ========================================

echo.
echo 1. Проверяем изменения в KleinanzeigenConfig.py...
git diff KleinanzeigenConfig.py

echo.
echo 2. Добавляем ТОЛЬКО KleinanzeigenConfig.py...
git add KleinanzeigenConfig.py

echo.
echo 3. Проверяем статус...
git status

echo.
echo 4. Создаем коммит для изменений конфигурации...
git commit -m "Update: KleinanzeigenConfig.py - Latest configuration changes"

echo.
echo 5. Отправляем в GitHub...
git push origin main

echo.
echo ========================================
echo ГОТОВО! Изменения в конфигурации загружены
echo ========================================
pause 