# TODO_App

## Getting Started

- First we want to make sure that we have generated all the necessary code for translation files,
  models files, and service files

### Generate models serialization files using build runner:

```bash
dart run build_runner build --delete-conflicting-outputs
```

### Generate Assets files using flutter gen:

```bash
fluttergen
```

### Generate Easy localization files:

```bash
dart run easy_localization:generate --source-dir ./assets/i18n/ --output-dir ./lib/core/config/localization/
```

```bash
dart run easy_localization:generate --source-dir ./assets/i18n -f keys -o locale_keys.g.dart  --output-dir ./lib/core/config/localization/
```

---

**_CREATED BY ZAIN_**
