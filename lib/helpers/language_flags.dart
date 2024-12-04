class LanguageFlag {
  final String code;
  final String flag;
  final String name;

  const LanguageFlag({
    required this.code,
    required this.flag,
    required this.name,
  });
}

class LanguageFlags {
  static const List<LanguageFlag> languages = [
    LanguageFlag(
      code: 'en',
      flag: '🇬🇧',
      name: 'English',
    ),
    LanguageFlag(
      code: 'ar',
      flag: '🇸🇦',
      name: 'العربية',
    ),
    LanguageFlag(
      code: 'tr',
      flag: '🇹🇷',
      name: 'Türkçe',
    ),
    LanguageFlag(
      code: 'de',
      flag: '🇩🇪',
      name: 'Deutsch',
    ),
    LanguageFlag(
      code: 'zh',
      flag: '🇨🇳',
      name: '中文',
    ),
    LanguageFlag(
      code: 'fr',
      flag: '🇫🇷',
      name: 'Français',
    ),
    LanguageFlag(
      code: 'es',
      flag: '🇪🇸',
      name: 'Español',
    ),
  ];

  static LanguageFlag getFlag(String code) {
    return languages.firstWhere(
      (lang) => lang.code == code,
      orElse: () => languages.first,
    );
  }
}
