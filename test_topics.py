#!/usr/bin/env python3
# Простой тест конфигурации
import sys
import os

# Очищаем кэш модулей
if 'KleinanzeigenConfig' in sys.modules:
    del sys.modules['KleinanzeigenConfig']

# Импортируем заново
import KleinanzeigenConfig

print("=== Тест конфигурации ===")
print(f"Всего топиков: {len(KleinanzeigenConfig.topics)}")
print("Список топиков:")
for name, config in KleinanzeigenConfig.topics.items():
    print(f"  - {name}: '{config['query']['q']}' (до {config['query']['maxPrice']}€)")

print(f"\nСтатус: {'✅ ОК' if len(KleinanzeigenConfig.topics) == 2 else '❌ Ошибка'}")
input("Нажмите Enter...")
