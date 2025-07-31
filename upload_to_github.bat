@echo off
echo ========================================
echo Загрузка проекта в GitHub
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
echo 2. Инициализируем Git репозиторий...
if not exist ".git" (
    git init
) else (
    echo Git репозиторий уже инициализирован
)

echo.
echo 3. Добавляем все файлы...
git add .

echo.
echo 4. Создаем коммит...
git commit -m "Initial commit: Kleinanzeigen Searcher project"

echo.
echo 5. Добавляем удаленный репозиторий...
git remote remove origin 2>nul
git remote add origin https://github.com/2extndd/KSF1.git

echo.
echo 6. Переименовываем ветку в main...
git branch -M main

echo.
echo 7. Отправляем код в GitHub...
git push -u origin main

echo.
echo ========================================
echo Готово! Проект загружен в GitHub
echo ========================================
pause 