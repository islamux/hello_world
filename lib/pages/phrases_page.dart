import 'package:flutter/material.dart';
import 'package:hello_world/data/phrases_list.dart';
import 'package:hello_world/localization_manager.dart';
import 'package:hello_world/model/phrase_model.dart';
import 'package:hello_world/static/images_link.dart'; // Import the images_link.dart

class PhrasesPage extends StatelessWidget {
  final List<PhraseModel> phrases = PhrasesList.phrases;

  PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = LocalizationManager.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          localization.translate("phrases"),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          final phrase = phrases[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                leading: const Icon(Icons.translate),
                title: Text(
                  localization.translate(phrase.key),
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  phrase.category,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(localization.translate(phrase.key)),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: phrase.translations.entries.map((entry) {
                            return ListTile(
                              leading: Image.asset(
                                _getFlagAsset(entry.key),
                                width: 24,
                                height: 24,
                              ),
                              title: Text('${entry.value}'),
                            );
                          }).toList(),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }

  String _getFlagAsset(String languageCode) {
    switch (languageCode) {
      case 'en':
        return ImagesLink.en;
      case 'ar':
        return ImagesLink.ar;
      case 'tr':
        return ImagesLink.tr;
      case 'de':
        return ImagesLink.de;
      case 'zh':
        return ImagesLink.zh;
      case 'fr':
        return ImagesLink.fr;
      case 'es':
        return ImagesLink.es;
      default:
        return '';
    }
  }
}
