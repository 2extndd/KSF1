@echo off
echo Настройка Git репозитория...

REM Проверяем, установлен ли Git
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Git не найден. Устанавливаем Git...
    winget install --id Git.Git -e --source winget
    echo Ожидаем установку Git...
    timeout /t 10 /nobreak >nul
)

REM Инициализируем Git репозиторий (если еще не инициализирован)
if not exist ".git" (
    echo Инициализируем Git репозиторий...
    git init
)

REM Добавляем все файлы
echo Добавляем файлы в Git...
git add .

REM Создаем первый коммит
echo Создаем первый коммит...
git commit -m "Initial commit: Kleinanzeigen Searcher project"

REM Добавляем удаленный репозиторий
echo Добавляем удаленный репозиторий...
git remote add origin https://github.com/2extndd/KSF1.git

REM Переименовываем основную ветку в main (если нужно)
git branch -M main

REM Отправляем код в GitHub
echo Отправляем код в GitHub...
git push -u origin main

echo Готово! Проект загружен в GitHub.
pause 