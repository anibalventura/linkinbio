import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkinbio/ui/screens/home_screen.dart';
import 'package:linkinbio/services/localizations.dart';
import 'package:linkinbio/ui/themes.dart';
import 'package:linkinbio/utils/texts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Init app with ScreenUtils for dynamic sizes.
  runApp(
    ScreenUtilInit(builder: () => LinkinbioApp()),
  );
}

class LinkinbioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '${Texts.appName} - ${Texts.user}',
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      routes: {
        HomeScreen.route: (context) => HomeScreen(),
      },
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('es', ''),
      ],
      localeResolutionCallback:
          (Locale? locale, Iterable<Locale> supportedLocales) {
        for (final Locale supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale!.languageCode ||
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
    );
  }
}
