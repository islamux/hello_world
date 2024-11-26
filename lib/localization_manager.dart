import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LocalizationManager {
  final Locale locale;

  LocalizationManager(this.locale);

  static LocalizationManager? of(BuildContext context) {
    return Localizations.of<LocalizationManager>(context, LocalizationManager);
  }

  static const LocalizationsDelegate<LocalizationManager> delegate =
      LocalizationDelegate();

  Map<String, String> _localizedStrings = {};

  Future<void> load() async {
    final jsonString =
        await rootBundle.loadString('assets/lang/${locale.languageCode}.json');
    final Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
  }

  String translate(String key) {
    return _localizedStrings[key] ?? key;
  }
}

class LocalizationDelegate extends LocalizationsDelegate<LocalizationManager> {
  const LocalizationDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'ar', 'fr', 'tr', 'de', 'es'].contains(locale.languageCode);
  }

  @override
  Future<LocalizationManager> load(Locale locale) async {
    final localizationManager = LocalizationManager(locale);
    await localizationManager.load();
    return localizationManager;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<LocalizationManager> old) {
    return false;
  }
}
