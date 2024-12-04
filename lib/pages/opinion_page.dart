import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_world/cubit/language_cubit.dart';
import 'package:hello_world/data/phrases_list.dart';
import 'package:hello_world/helpers/language_flags.dart';

class OpinionPage extends StatelessWidget {
  const OpinionPage({super.key});

  void _showTranslations(
      BuildContext context, Map<String, String> translations) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Translations',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 16),
                ...LanguageFlags.languages.map((lang) {
                  final translation =
                      translations[lang.code] ?? translations['en']!;
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 80,
                          child: Row(
                            children: [
                              Text(
                                lang.flag,
                                style: const TextStyle(fontSize: 24),
                              ),
                              const SizedBox(width: 8),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Text(translation),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Close'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final opinionPhrases = PhrasesList.phrases
        .where((phrase) => phrase.category == "Opinion")
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Opinion'),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.language),
            onSelected: (String languageCode) {
              context.read<LanguageCubit>().changeLanguage(languageCode);
            },
            itemBuilder: (BuildContext context) =>
                LanguageFlags.languages.map((lang) {
              return PopupMenuItem<String>(
                value: lang.code,
                child: Row(
                  children: [
                    Text(
                      lang.flag,
                      style: const TextStyle(fontSize: 24),
                    ),
                    const SizedBox(width: 12),
                    Text(lang.name),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
      body: BlocBuilder<LanguageCubit, Locale>(
        builder: (context, locale) {
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: opinionPhrases.length,
            itemBuilder: (context, index) {
              final phrase = opinionPhrases[index];
              return Card(
                margin: const EdgeInsets.only(bottom: 16),
                child: InkWell(
                  onTap: () => _showTranslations(context, phrase.translations),
                  child: ListTile(
                    title: Text(
                      phrase.translations[locale.languageCode] ??
                          phrase.translations['en']!,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    subtitle: Text(
                      phrase.translations['en']!,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    trailing: const Icon(Icons.translate),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
