@echo off
echo ========================================
echo Загрузка изменений в GitHub (ИСПРАВЛЕННАЯ ВЕРСИЯ)
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
echo 2. Инициализируем Git репозиторий (если нужно)...
if not exist ".git" (
    echo Создаем новый Git репозиторий...
    git init
) else (
    echo Git репозиторий уже существует
)

echo.
echo 3. Добавляем все файлы...
git add .

echo.
echo 4. Создаем коммит...
git commit -m "Update: Latest changes to Kleinanzeigen Searcher project"

echo.
echo 5. Добавляем удаленный репозиторий...
git remote remove origin 2>nul
git remote add origin https://github.com/2extndd/KSF1.git

echo.
echo 6. Переименовываем ветку в main...
git branch -M main

echo.
echo 7. Получаем изменения с GitHub (если есть)...
git pull origin main --allow-unrelated-histories

echo.
echo 8. Отправляем код в GitHub...
git push -u origin main

echo.
echo ========================================
echo Готово! Изменения загружены в GitHub
echo ========================================
pause 