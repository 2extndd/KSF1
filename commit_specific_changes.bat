@echo off
echo ========================================
echo ЗАГРУЗКА СПЕЦИФИЧЕСКИХ ИЗМЕНЕНИЙ
echo ========================================

echo.
echo 1. Показываем все изменения...
git status

echo.
echo 2. Показываем изменения в KleinanzeigenConfig.py...
git diff KleinanzeigenConfig.py

echo.
echo 3. Добавляем ВСЕ изменения...
git add -A

echo.
echo 4. Проверяем что добавлено...
git status

echo.
echo 5. Создаем коммит с описанием изменений...
git commit -m "Update: KleinanzeigenConfig.py - Added new search topics (BBS, issac) and updated configuration"

echo.
echo 6. Отправляем в GitHub...
git push origin main

echo.
echo ========================================
echo ГОТОВО! Все изменения загружены
echo ========================================
pause 