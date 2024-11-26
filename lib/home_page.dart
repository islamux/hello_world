import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_world/language_cubit.dart';
import 'localization_manager.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = LocalizationManager.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(localization.translate('greetingMorning')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              localization.translate('greetingMorning'),
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // أزرار تغيير اللغة
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildLanguageButton(
                    context, 'en', localization.translate('english')),
                _buildLanguageButton(
                    context, 'fr', localization.translate('french')),
                _buildLanguageButton(
                    context, 'tr', localization.translate('turkish')),
                _buildLanguageButton(
                    context, 'de', localization.translate('german')),
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(localization.translate('greetingEvening')),
                  ),
                );
              },
              child: Text(localization.translate('greetingEvening')),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageButton(
      BuildContext context, String languageCode, String label) {
    return ElevatedButton(
      onPressed: () {
        context.read<LanguageCubit>().changeLanguage(languageCode);
      },
      child: Text(label),
    );
  }
}
