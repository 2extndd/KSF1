import requests
from bs4 import BeautifulSoup
import json

def get_kleinanzeigen_categories():
    """Получить список категорий с Kleinanzeigen"""
    try:
        # Попробуем получить главную страницу
        response = requests.get("https://www.kleinanzeigen.de", headers={
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
        })
        
        print("Статус ответа:", response.status_code)
        
        # Попробуем найти категории в HTML
        soup = BeautifulSoup(response.text, 'html.parser')
        
        # Ищем ссылки на категории
        category_links = soup.find_all('a', href=True)
        categories = {}
        
        for link in category_links:
            href = link.get('href', '')
            text = link.get_text(strip=True)
            
            # Ищем ссылки с категориями (содержат /s-)
            if '/s-' in href and 'c' in href:
                # Извлекаем ID категории из URL
                if '/c' in href:
                    try:
                        cat_id = href.split('/c')[1].split('/')[0]
                        if cat_id.isdigit() and text:
                            categories[text] = cat_id
                    except:
                        pass
        
        print("\nНайденные категории:")
        for name, cat_id in sorted(categories.items()):
            print(f"{cat_id}: {name}")
            
        return categories
        
    except Exception as e:
        print(f"Ошибка: {e}")
        return {}

if __name__ == "__main__":
    categories = get_kleinanzeigen_categories()
    
    # Попробуем также проверить конкретные категории
    test_categories = {
        "Mode & Beauty": ["23", "24", "25", "26"],
        "Schuhe": ["158"],
        "Taschen": ["156", "157"],
        "Kleidung & Accessoires": ["23"],
        "Herrenmode": ["24"],
        "Damenmode": ["25"]
    }
    
    print("\n\nТестирование категорий:")
    for cat_name, cat_ids in test_categories.items():
        print(f"\n{cat_name}:")
        for cat_id in cat_ids:
            print(f"  ID {cat_id}")
