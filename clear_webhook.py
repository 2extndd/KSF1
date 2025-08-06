#!/usr/bin/env python3
"""
Utility to clear Telegram webhook and reset bot connection
"""

import requests
import sys
import os

# Импортируем конфигурацию
sys.path.append(os.path.dirname(os.path.abspath(__file__)))
import KleinanzeigenConfig

def clear_telegram_webhook():
    """Очищает webhook и сбрасывает pending updates"""
    token = KleinanzeigenConfig.telegram_bot_token
    
    print("🧹 Clearing Telegram webhook and pending updates...")
    
    # Удаляем webhook
    webhook_url = f"https://api.telegram.org/bot{token}/deleteWebhook"
    response = requests.post(webhook_url, json={"drop_pending_updates": True})
    
    if response.status_code == 200:
        print("✅ Webhook cleared successfully")
    else:
        print(f"❌ Failed to clear webhook: {response.text}")
    
    # Получаем pending updates и удаляем их
    updates_url = f"https://api.telegram.org/bot{token}/getUpdates"
    response = requests.get(updates_url, params={"offset": -1})
    
    if response.status_code == 200:
        data = response.json()
        if data.get("result"):
            last_update_id = data["result"][-1]["update_id"]
            # Подтверждаем все updates
            confirm_url = f"https://api.telegram.org/bot{token}/getUpdates"
            requests.get(confirm_url, params={"offset": last_update_id + 1})
            print(f"✅ Cleared pending updates up to ID: {last_update_id}")
        else:
            print("✅ No pending updates found")
    else:
        print(f"❌ Failed to get updates: {response.text}")

if __name__ == "__main__":
    clear_telegram_webhook()
    print("🔄 Webhook reset complete. You can now start the bot.")
