print("Testing new config")
try:
    import KleinanzeigenConfig_new as config
    print("New config loaded")
    print("Topics count:", len(config.topics))
    for name in config.topics:
        print("Topic:", name)
    print("Success!")
except Exception as e:
    print("Error:", str(e))
