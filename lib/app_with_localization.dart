import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_world/helpers/localization_delegates.dart';
import 'package:hello_world/home_page.dart';
import 'package:hello_world/language_cubit.dart';
import 'package:hello_world/static/supported_locales.dart';

class AppWithLocalization extends StatelessWidget {
  const AppWithLocalization({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, Locale>(builder: (context, locale) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Localized App',
        localizationsDelegates: localizationDelegates,
        supportedLocales: supportedLocales,
        locale: locale,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      );
    });
  }
}
