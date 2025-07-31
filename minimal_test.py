print("Test started")
try:
    import KleinanzeigenConfig
    print("Config loaded")
    print("Topics count:", len(KleinanzeigenConfig.topics))
    for name in KleinanzeigenConfig.topics:
        print("Topic:", name)
    print("Test completed")
except Exception as e:
    print("Error:", str(e))
