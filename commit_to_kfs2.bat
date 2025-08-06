@echo off
echo ========================================
echo КОММИТ ПРОЕКТА В НОВЫЙ РЕПОЗИТОРИЙ KFS2
echo ========================================

echo.
echo 1. Проверяем Git...
git --version
if %errorlevel% neq 0 (
    echo ОШИБКА: Git не установлен!
    echo Пожалуйста, установите Git с https://git-scm.com/
    pause
    exit /b 1
)

echo.
echo 2. Добавляем все файлы...
git add -A

echo.
echo 3. Проверяем статус...
git status

echo.
echo 4. Создаем коммит для KFS2...
git commit -m "Initial commit: Cleaned Kleinanzeigen Searcher project with Railway support - Railway Key: 9ea2e410-d869-47a1-8256-b03f48f0ee26"

echo.
echo 5. Удаляем старый remote origin...
git remote remove origin 2>nul

echo.
echo 6. Добавляем новый remote KFS2...
git remote add origin https://github.com/2extndd/KFS2.git

echo.
echo 7. Переименовываем ветку в main...
git branch -M main

echo.
echo 8. Отправляем в новый репозиторий KFS2...
git push -u origin main

echo.
echo ========================================
echo ГОТОВО! Проект закоммичен в KFS2
echo ========================================
echo.
echo Новый репозиторий: https://github.com/2extndd/KFS2.git
echo Railway Key: 9ea2e410-d869-47a1-8256-b03f48f0ee26
echo.
pause 