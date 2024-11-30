import 'package:flutter/material.dart';
import 'package:hello_world/data/translation.dart';

class LocalizationManager {
  final Locale locale;

  LocalizationManager(this.locale);

  static LocalizationManager? of(BuildContext context) {
    return Localizations.of<LocalizationManager>(context, LocalizationManager);
  }

  static LocalizationsDelegate<LocalizationManager> delegate =
      LocalizationDelegate();

  String translate(String key) {
    return translations[key]?[locale.languageCode] ?? key;
  }
}

class LocalizationDelegate extends LocalizationsDelegate<LocalizationManager> {
  LocalizationDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'ar', 'tr', 'de', 'zh', 'fr', 'es']
        .contains(locale.languageCode);
  }

  @override
  Future<LocalizationManager> load(Locale locale) async {
    return LocalizationManager(locale);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<LocalizationManager> old) {
    return false;
  }
}
