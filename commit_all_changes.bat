@echo off
echo ========================================
echo ЗАГРУЗКА ВСЕХ ИЗМЕНЕНИЙ В GITHUB
echo ========================================

echo.
echo 1. Добавляем ВСЕ файлы в Git...
git add -A

echo.
echo 2. Проверяем статус...
git status

echo.
echo 3. Создаем коммит...
git commit -m "Update: All latest changes - %date% %time%"

echo.
echo 4. Отправляем в GitHub...
git push origin main

echo.
echo ========================================
echo ГОТОВО! Все изменения загружены
echo ========================================
pause 