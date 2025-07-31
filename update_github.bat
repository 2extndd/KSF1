@echo off
echo ========================================
echo Обновление проекта в GitHub
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
echo 2. Добавляем новые файлы...
git add .

echo.
echo 3. Создаем коммит с исправлениями...
git commit -m "Fix: Add Procfile and runtime.txt for deployment configuration"

echo.
echo 4. Отправляем изменения в GitHub...
git push origin main

echo.
echo ========================================
echo Готово! Проект обновлен в GitHub
echo ========================================
echo.
echo Примечание: Это локальный проект, не предназначенный для деплоя на веб-серверах.
echo Для использования скачайте проект и запустите локально.
pause 