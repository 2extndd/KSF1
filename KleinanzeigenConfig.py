# Configuration for Kleinanzeigen Scanner
# Based on VintedScanner structure adapted for Kleinanzeigen

# Telegram Token and ChatID for notifications
telegram_bot_token = "8218691814:AAEZzQRMxjidAMeJzmyUzkxwRciPRDpct6c"
telegram_chat_id = "-1002742804558"

# Kleinanzeigen URL
kleinanzeigen_url = "https://www.kleinanzeigen.de"

# List of topics and search parameters
# Adapted for real Kleinanzeigen structure
topics = {
    "GGL": {
        "thread_id": 190,
        "summary_count": 3,
        "query": {
            "categoryId": "156",
            "q": "george gina lucy",
            "maxPrice": "50",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschadigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "Rick_Owens2": {
        "thread_id": 275,
        "summary_count": 3,
        "query": {
            "categoryId": "160,158,156",
            "q": "rick owens",
            "maxPrice": "100",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschadigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "Rick_Owens": {
        "thread_id": 275,
        "summary_count": 3,
        "query": {
            "categoryId": "160,158,156",
            "q": "DRKSHDW",
            "maxPrice": "100",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschadigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "Yohji_Yamamoto": {
        "thread_id": 331,
        "summary_count": 3,
        "query": {
            "categoryId": "160,158,156",
            "q": "Yohji Yamamoto",
            "maxPrice": "100",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschadigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "Y3": {
        "thread_id": 331,
        "summary_count": 3,
        "query": {
            "categoryId": "160,158,156",
            "q": "Y-3",
            "maxPrice": "50",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschadigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "Maison_Margiela": {
        "thread_id": 302,
        "summary_count": 3,
        "query": {
            "categoryId": "160,158,154",
            "q": "Maison Margiela",
            "maxPrice": "100",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschadigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "Maison_Margiela2": {
        "thread_id": 302,
        "summary_count": 3,
        "query": {
            "categoryId": "160,158,154",
            "q": "mm6",
            "maxPrice": "50",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschadigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "Raf_Simons": {
        "thread_id": 305,
        "summary_count": 3,
        "query": {
            "categoryId": "160,158,154",
            "q": "Raf Simons",
            "maxPrice": "100",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschadigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "New_Rock": {
        "thread_id": 348,
        "summary_count": 3,
        "query": {
            "categoryId": "158",
            "q": "New Rock",
            "maxPrice": "50",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschadigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "Alyx": {
        "thread_id": 315,
        "summary_count": 3,
        "query": {
            "categoryId": "160,158,154",
            "q": "Alyx",
            "maxPrice": "100",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschadigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "Helmut_Lang": {
        "thread_id": 344,
        "summary_count": 3,
        "query": {
            "categoryId": "160,158",
            "q": "Helmut Lang",
            "maxPrice": "50",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschadigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "Thom_Krom": {
        "thread_id": 334,
        "summary_count": 3,
        "query": {
            "categoryId": "160,158,154",
            "q": "Thom Krom",
            "maxPrice": "50",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschadigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "GG2": {
        "thread_id": 190,
        "summary_count": 3,
        "query": {
            "categoryId": "156",
            "q": "ggl",
            "maxPrice": "50",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschadigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
}

# ПОДСКАЗКИ ДЛЯ НАСТРОЙКИ:
# 1. categoryId - ID категории товаров на Kleinanzeigen (нужно найти в network tab браузера)
# 2. q - поисковый запрос (ключевые слова)
# 3. exclude_keywords - слова для исключения из результатов (через запятую)
# 4. required_keywords - обязательные слова в заголовке (через запятую)
# 5. thread_id - ID топика в Telegram для отправки уведомлений
# 6. summary_count - количество вещей для показа при запуске/перезагрузке (по умолчанию 5)
# 7. require_shipping - только товары с возможностью доставки (True/False)
# 8. Цены указываются в евро
