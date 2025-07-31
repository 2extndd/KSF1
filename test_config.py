#!/usr/bin/env python3
import KleinanzeigenConfig

print("=== Проверка конфигурации ===")
print(f"Всего топиков: {len(KleinanzeigenConfig.topics)}")
print("\nДетали топиков:")
for name, config in KleinanzeigenConfig.topics.items():
    print(f"- {name}:")
    print(f"  Поиск: {config['query']['q']}")
    print(f"  Цена до: {config['query']['maxPrice']}€")
    print(f"  Категория: {config['query']['categoryId']}")
    print()
