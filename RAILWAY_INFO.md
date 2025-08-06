# Railway Deployment Information

## 🚀 Railway Key
```
9ea2e410-d869-47a1-8256-b03f48f0ee26
```

## 📋 Railway Setup Steps

### 1. Подключение к Railway
1. Перейдите на [Railway.app](https://railway.app)
2. Войдите в аккаунт или создайте новый
3. Нажмите "New Project"
4. Выберите "Deploy from GitHub repo"
5. Выберите репозиторий: `2extndd/KSF1`

### 2. Настройка переменных окружения
В Railway Dashboard добавьте следующие переменные:

```
TELEGRAM_BOT_TOKEN=8028751125:AAEky-PBAuaf5J8_8LcZPRnbR7qZEr1ocw4
TELEGRAM_CHAT_ID=-1002707972747
```

### 3. Автоматический деплой
- Railway автоматически обнаружит Python проект
- Установит зависимости из `requirements.txt`
- Запустит проект согласно `Procfile`

## 🔧 Railway Configuration

### Procfile
```
web: python kleinanzeigen_scanner.py
```

### Runtime
```
python-3.9.18
```

### Dependencies
- requests
- beautifulsoup4
- python-telegram-bot
- schedule

## 📊 Railway Monitoring

### Логи
- Доступны в Railway Dashboard
- Real-time логи в реальном времени
- История логов за последние 30 дней

### Метрики
- CPU использование
- Memory использование
- Network трафик
- Response time

## 🔄 Railway Updates

### Автоматические обновления
- При push в main ветку
- Автоматический перезапуск
- Zero-downtime деплой

### Ручные обновления
1. Перейдите в Railway Dashboard
2. Выберите проект
3. Нажмите "Deploy" для принудительного деплоя

## 🆘 Railway Support

### Полезные команды
```bash
# Проверка статуса
railway status

# Просмотр логов
railway logs

# Переменные окружения
railway variables

# Перезапуск
railway restart
```

### Troubleshooting
1. Проверьте логи в Railway Dashboard
2. Убедитесь, что переменные окружения установлены
3. Проверьте, что Procfile корректный
4. Убедитесь, что requirements.txt актуальный

## 📞 Контакты

- **Railway Key**: `9ea2e410-d869-47a1-8256-b03f48f0ee26`
- **GitHub**: https://github.com/2extndd/KSF1
- **Railway Dashboard**: https://railway.app/dashboard 