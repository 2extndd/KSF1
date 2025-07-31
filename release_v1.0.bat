@echo off
echo ========================================
echo Создание релиза версии 1.0
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
git add .

echo.
echo 3. Создаем коммит версии 1.0...
git commit -m "Release v1.0: Stable version with full functionality"

echo.
echo 4. Создаем тег версии 1.0...
git tag -a v1.0 -m "Version 1.0 - Stable Release"

echo.
echo 5. Отправляем изменения в GitHub...
git push origin main

echo.
echo 6. Отправляем тег в GitHub...
git push origin v1.0

echo.
echo ========================================
echo Готово! Релиз версии 1.0 создан
echo ========================================
echo.
echo Релиз доступен по адресу:
echo https://github.com/2extndd/KSF1/releases/tag/v1.0
echo.
echo Проект готов к использованию!
pause 