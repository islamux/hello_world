import 'package:flutter/material.dart';
import 'package:hello_world/localization_manager.dart';
import 'package:hello_world/widgets/build_language_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = LocalizationManager.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(localization!.translate('appName')),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              localization.translate('greetingMorning'),
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3, // عدد الأعمدة
                mainAxisSpacing: 16, // المسافات بين العناصر عمودياً
                crossAxisSpacing: 16, // المسافات بين العناصر أفقياً
                children: [
                  buildLanguageButton(context, 'en',
                      localization.translate('english'), 'assets/flags/uk.png'),
                  buildLanguageButton(context, 'fr',
                      localization.translate('french'), 'assets/flags/fr.png'),
                  buildLanguageButton(context, 'tr',
                      localization.translate('turkish'), 'assets/flags/tr.png'),
                  buildLanguageButton(context, 'de',
                      localization.translate('german'), 'assets/flags/de.png'),
                  buildLanguageButton(context, 'es',
                      localization.translate('spanish'), 'assets/flags/es.png'),
                  buildLanguageButton(context, 'ar',
                      localization.translate('arabic'), 'assets/flags/ar.png'),
                  buildLanguageButton(context, 'zh',
                      localization.translate('chinese'), 'assets/flags/cn.png'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              localization.translate('myName'),
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
