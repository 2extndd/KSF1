Write-Host "Настройка Git репозитория..." -ForegroundColor Green

# Проверяем, установлен ли Git
try {
    $gitVersion = git --version
    Write-Host "Git найден: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "Git не найден. Устанавливаем Git..." -ForegroundColor Yellow
    try {
        winget install --id Git.Git -e --source winget
        Write-Host "Ожидаем установку Git..." -ForegroundColor Yellow
        Start-Sleep -Seconds 10
    } catch {
        Write-Host "Ошибка установки Git. Пожалуйста, установите Git вручную." -ForegroundColor Red
        exit 1
    }
}

# Инициализируем Git репозиторий (если еще не инициализирован)
if (-not (Test-Path ".git")) {
    Write-Host "Инициализируем Git репозиторий..." -ForegroundColor Green
    git init
}

# Добавляем все файлы
Write-Host "Добавляем файлы в Git..." -ForegroundColor Green
git add .

# Создаем первый коммит
Write-Host "Создаем первый коммит..." -ForegroundColor Green
git commit -m "Initial commit: Kleinanzeigen Searcher project"

# Добавляем удаленный репозиторий
Write-Host "Добавляем удаленный репозиторий..." -ForegroundColor Green
git remote add origin https://github.com/2extndd/KSF1.git

# Переименовываем основную ветку в main (если нужно)
git branch -M main

# Отправляем код в GitHub
Write-Host "Отправляем код в GitHub..." -ForegroundColor Green
git push -u origin main

Write-Host "Готово! Проект загружен в GitHub." -ForegroundColor Green
Read-Host "Нажмите Enter для выхода" 