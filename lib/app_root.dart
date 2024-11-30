// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:hello_world/cubit/language_cubit.dart';
// import 'package:hello_world/cubit/navigation_cubit.dart';
// import 'package:hello_world/helpers/localization_delegates.dart';
// import 'package:hello_world/pages/phrases_page.dart';
// import 'package:hello_world/static/route_constants.dart';
// import 'package:hello_world/static/supported_locales.dart';

// class AppRoot extends StatelessWidget {
//   const AppRoot({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(create: (_) => LanguageCubit()),
//         BlocProvider(create: (_) => NavigationCubit()),
//       ],
//       child: BlocBuilder<LanguageCubit, Locale>(
//         builder: (context, locale) {
//           return MaterialApp(
//             debugShowCheckedModeBanner: false,
//             title: 'Localized App',
//             localizationsDelegates: localizationDelegates,
//             supportedLocales: supportedLocales,
//             locale: locale,
//             theme: ThemeData(
//               useMaterial3: true,
//               colorScheme: ColorScheme.fromSeed(
//                 seedColor: const Color(0xFF6750A4),
//                 brightness: Brightness.light,
//               ),
//               cardTheme: CardTheme(
//                 elevation: 0,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(16),
//                   side: BorderSide(color: Colors.grey.shade200),
//                 ),
//               ),
//               appBarTheme: const AppBarTheme(
//                 centerTitle: true,
//                 elevation: 0,
//                 backgroundColor: Colors.transparent,
//                 foregroundColor: Color(0xFF6750A4),
//               ),
//               textTheme: TextTheme(
//                 headlineMedium: TextStyle(
//                   color: Colors.grey.shade800,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 bodyLarge: TextStyle(color: Colors.grey.shade700),
//                 bodyMedium: TextStyle(color: Colors.grey.shade600),
//               ),
//             ),
//             initialRoute: RouteConstants.phrases, // Define initial route
//             routes: {
//               RouteConstants.phrases: (context) => PhrasesPage(),
//             },
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hello_world/cubit/language_cubit.dart';
import 'package:hello_world/cubit/navigation_cubit.dart';
import 'package:hello_world/helpers/localization_delegates.dart';
import 'package:hello_world/pages/phrases_page.dart';
import 'package:hello_world/static/route_constants.dart';
import 'package:hello_world/static/supported_locales.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => LanguageCubit()),
        BlocProvider(create: (_) => NavigationCubit()),
      ],
      child: BlocBuilder<LanguageCubit, Locale>(
        builder: (context, locale) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Localized App',
            localizationsDelegates: localizationDelegates,
            supportedLocales: supportedLocales,
            locale: locale,
            theme: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSeed(
                seedColor: const Color(0xFF6750A4),
                brightness: Brightness.light,
              ),
              cardTheme: CardTheme(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(color: Colors.grey.shade200),
                ),
              ),
              appBarTheme: const AppBarTheme(
                centerTitle: true,
                elevation: 0,
                backgroundColor: Colors.transparent,
                foregroundColor: Color(0xFF6750A4),
              ),
              textTheme: TextTheme(
                headlineMedium: TextStyle(
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.bold,
                ),
                bodyLarge: TextStyle(color: Colors.grey.shade700),
                bodyMedium: TextStyle(color: Colors.grey.shade600),
              ),
            ),
            initialRoute: RouteConstants.phrases,
            routes: {
              RouteConstants.phrases: (context) => PhrasesPage(),
            },
          );
        },
      ),
    );
  }
}
