# Тестовая конфигурация
telegram_bot_token = "8218691814:AAEZzQRMxjidAMeJzmyUzkxwRciPRDpct6c"
telegram_chat_id = "-1002742804558"
kleinanzeigen_url = "https://www.kleinanzeigen.de"

topics = {
    "GGL": {
        "thread_id": 0,
        "summary_count": 3,
        "query": {
            "categoryId": "156",
            "q": "george gina lucy",
            "maxPrice": "50",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschädigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "Rick Owens2": {
        "thread_id": 0,
        "summary_count": 3,
        "query": {
            "categoryId": "160,158,156",
            "q": "rick owens",
            "maxPrice": "100",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschädigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "Rick Owens": {
        "thread_id": 0,
        "summary_count": 3,
        "query": {
            "categoryId": "160,158,156",
            "q": "DRKSHDW",
            "maxPrice": "100",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschädigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "Yohji Yamamoto": {
        "thread_id": 0,
        "summary_count": 3,
        "query": {
            "categoryId": "160,158,156",
            "q": "Yohji Yamamoto",
            "maxPrice": "100",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschädigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "Y-3": {
        "thread_id": 0,
        "summary_count": 3,
        "query": {
            "categoryId": "160,158,156",
            "q": "Y-3",
            "maxPrice": "50",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschädigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "Maison Margiela": {
        "thread_id": 0,
        "summary_count": 3,
        "query": {
            "categoryId": "160,158,154",
            "q": "Maison Margiela",
            "maxPrice": "100",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschädigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "Maison Margiela2": {
        "thread_id": 0,
        "summary_count": 3,
        "query": {
            "categoryId": "160,158,154",
            "q": "mm6",
            "maxPrice": "50",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschädigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "Raf Simons": {
        "thread_id": 0,
        "summary_count": 3,
        "query": {
            "categoryId": "160,158,154",
            "q": "Raf Simons",
            "maxPrice": "100",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschädigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "New Rock": {
        "thread_id": 0,
        "summary_count": 3,
        "query": {
            "categoryId": "158",
            "q": "New Rock",
            "maxPrice": "50",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschädigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "Alyx": {
        "thread_id": 0,
        "summary_count": 3,
        "query": {
            "categoryId": "160,158,154",
            "q": "Alyx",
            "maxPrice": "100",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschädigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "Helmut Lang": {
        "thread_id": 0,
        "summary_count": 3,
        "query": {
            "categoryId": "160,158",
            "q": "Helmut Lang",
            "maxPrice": "50",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschädigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "Thom Krom": {
        "thread_id": 0,
        "summary_count": 3,
        "query": {
            "categoryId": "160,158,154",
            "q": "Thom Krom",
            "maxPrice": "50",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschädigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    "GG2": {
        "thread_id": 0,
        "summary_count": 3,
        "query": {
            "categoryId": "156",
            "q": "ggl",
            "maxPrice": "50",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschädigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
    
}

print("Конфигурация загружена. Топиков:", len(topics))
for name in topics.keys():
    print("-", name)
