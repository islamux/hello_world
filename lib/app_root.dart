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
//             theme: ThemeData(primarySwatch: Colors.blue),
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
            theme: ThemeData(primarySwatch: Colors.blue),
            initialRoute: RouteConstants.phrases, // Define initial route
            routes: {
              RouteConstants.phrases: (context) => PhrasesPage(),
            },
          );
        },
      ),
    );
  }
}
