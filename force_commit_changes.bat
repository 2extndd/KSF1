@echo off
echo ========================================
echo ПРИНУДИТЕЛЬНАЯ загрузка ВСЕХ изменений в GitHub
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
echo 2. Проверяем статус Git...
git status

echo.
echo 3. Принудительно добавляем ВСЕ файлы (включая новые)...
git add -A

echo.
echo 4. Проверяем что добавлено...
git status

echo.
echo 5. Создаем коммит с текущей датой...
git commit -m "Update: Latest changes to Kleinanzeigen Searcher project - %date% %time%"

echo.
echo 6. Добавляем удаленный репозиторий (если нужно)...
git remote remove origin 2>nul
git remote add origin https://github.com/2extndd/KSF1.git

echo.
echo 7. Переименовываем ветку в main...
git branch -M main

echo.
echo 8. Получаем изменения с GitHub (если есть)...
git pull origin main --allow-unrelated-histories --no-edit

echo.
echo 9. Отправляем код в GitHub...
git push -u origin main

echo.
echo ========================================
echo Готово! ВСЕ изменения загружены в GitHub
echo ========================================
pause 