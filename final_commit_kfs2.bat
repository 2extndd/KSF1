@echo off
echo ========================================
echo ФИНАЛЬНЫЙ КОММИТ В KFS2
echo ========================================

echo.
echo 1. Проверяем текущий статус...
git status

echo.
echo 2. Добавляем все изменения...
git add -A

echo.
echo 3. Проверяем что добавлено...
git status

echo.
echo 4. Создаем финальный коммит...
git commit -m "v2.0: Cleaned project with Railway support - Repository: KFS2 - Railway Key: 9ea2e410-d869-47a1-8256-b03f48f0ee26"

echo.
echo 5. Проверяем remote...
git remote -v

echo.
echo 6. Отправляем в KFS2...
git push origin main

echo.
echo ========================================
echo ГОТОВО! Проект закоммичен в KFS2
echo ========================================
echo.
echo Новый репозиторий: https://github.com/2extndd/KFS2.git
echo Railway Key: 9ea2e410-d869-47a1-8256-b03f48f0ee26
echo.
echo Проект готов для деплоя на Railway!
echo.
pause 