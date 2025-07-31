# Konf dlya Kleinanzeigen Scanner
# Osnova na strukture VintedScanner s adaptaciej pod Kleinanzeigen

# Telegram Token i ChatID dlya uvedomlenij
telegram_bot_token = "8218691814:AAEZzQRMxjidAMeJzmyUzkxwRciPRDpct6c"
telegram_chat_id = "-1002742804558"

# Kleinanzeigen URL
kleinanzeigen_url = "https://www.kleinanzeigen.de"

# Spisok topikov i parametrov dlya poiska
# Adaptirovano pod real'nuyu strukturu Kleinanzeigen
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
    "Rick_Owens": {
        "thread_id": 275,
        "summary_count": 3,
        "query": {
            "categoryId": "160,158",
            "q": "rick owens",
            "maxPrice": "100",
            "minPrice": "",
        },
        "exclude_keywords": "defekt,kaputt,beschadigt,fake,replica",
        "required_keywords": "",
        "exclude_locations": "",
        "require_shipping": True,
    },
}
