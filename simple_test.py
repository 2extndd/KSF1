import sys
import os

# Очищаем кэш модулей
if 'KleinanzeigenConfig' in sys.modules:
    del sys.modules['KleinanzeigenConfig']

# Импортируем заново
import KleinanzeigenConfig

print("=== Тест конфигурации ===")
print("Всего топиков:", len(KleinanzeigenConfig.topics))
print("Список топиков:")
for name, config in KleinanzeigenConfig.topics.items():
    query = config['query']['q']
    maxPrice = config['query']['maxPrice']
    print("  -", name + ":", "'" + query + "'", "(до " + maxPrice + "€)")

if len(KleinanzeigenConfig.topics) == 2:
    print("\nСтатус: ✅ ОК - найдено 2 топика")
else:
    print("\nСтатус: ❌ Ошибка - найдено", len(KleinanzeigenConfig.topics), "топика")

input("Нажмите Enter...")
