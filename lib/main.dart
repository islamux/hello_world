// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hello_world/language_cubit.dart';

import 'home_page.dart';
import 'localization_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LanguageCubit(),
      child: BlocBuilder<LanguageCubit, Locale>(
        builder: (context, locale) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Localized App',
            localizationsDelegates: const [
              // todo : seperated file
              LocalizationDelegate(),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              // todo: seperated file
              Locale('en'),
              Locale('ar'),
              Locale('fr'),
              Locale('tr'),
              Locale('de'),
              Locale('es'),
            ],
            locale: locale,
            theme: ThemeData(primarySwatch: Colors.blue),
            home: const HomePage(),
          );
        },
      ),
    );
  }
}
