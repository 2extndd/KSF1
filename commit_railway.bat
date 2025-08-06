@echo off
echo ========================================
echo КОММИТ ПРОЕКТА С RAILWAY ИНФОРМАЦИЕЙ
echo ========================================

echo.
echo 1. Добавляем все файлы...
git add -A

echo.
echo 2. Проверяем статус...
git status

echo.
echo 3. Создаем коммит с Railway информацией...
git commit -m "Clean: Project cleanup and Railway deployment - Railway Key: 9ea2e410-d869-47a1-8256-b03f48f0ee26"

echo.
echo 4. Отправляем в GitHub...
git push origin main

echo.
echo ========================================
echo ГОТОВО! Проект закоммичен с Railway
echo ========================================
echo.
echo Railway Key: 9ea2e410-d869-47a1-8256-b03f48f0ee26
echo.
pause 