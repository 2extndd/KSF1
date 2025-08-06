# Инструкция по загрузке проекта в GitHub

## Автоматическая загрузка

1. **Запустите файл `upload_to_github.bat`** двойным щелчком
2. Следуйте инструкциям на экране
3. При запросе введите ваши учетные данные GitHub

## Ручная загрузка (если автоматическая не работает)

### 1. Установите Git
Если Git не установлен, скачайте его с https://git-scm.com/

### 2. Откройте командную строку в папке проекта
```
cd "C:\Users\mrhan\OneDrive\Рабочий стол\KleinanzeigenSearcher-8e3ae172317e3bb82eef5c290dd78ac17d54dd08"
```

### 3. Выполните команды по порядку:

```bash
# Проверяем Git
git --version

# Инициализируем репозиторий (если еще не инициализирован)
git init

# Добавляем все файлы
git add .

# Создаем первый коммит
git commit -m "Initial commit: Kleinanzeigen Searcher project"

# Добавляем удаленный репозиторий
git remote add origin https://github.com/2extndd/KSF1.git

# Переименовываем ветку в main
git branch -M main

# Отправляем код в GitHub
git push -u origin main
```

### 4. Аутентификация
При первом push Git попросит ввести:
- Username: ваш логин GitHub
- Password: используйте Personal Access Token (не пароль)

## Создание Personal Access Token

1. Зайдите на GitHub.com
2. Нажмите на аватар → Settings
3. Слева выберите "Developer settings" → "Personal access tokens" → "Tokens (classic)"
4. Нажмите "Generate new token" → "Generate new token (classic)"
5. Выберите scopes: `repo`, `workflow`
6. Скопируйте токен и используйте его как пароль

## Возможные проблемы

### Ошибка "fatal: remote origin already exists"
```bash
git remote remove origin
git remote add origin https://github.com/2extndd/KSF1.git
```

### Ошибка аутентификации
- Убедитесь, что используете Personal Access Token, а не пароль
- Проверьте, что токен имеет права на запись в репозиторий

### Ошибка "main branch does not exist"
```bash
git checkout -b main
git push -u origin main
```

## Проверка результата

После успешной загрузки проверьте:
https://github.com/2extndd/KSF1

Все файлы проекта должны появиться в репозитории. 