import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkinbio/ui/screens/home_screen.dart';
import 'package:linkinbio/utils/localizations.dart';
import 'package:linkinbio/utils/themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        title: '${AppText.appName} - ${AppText.user}',
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
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
        theme: Themes.lightTheme,
        darkTheme: Themes.darkTheme,
        routes: {
          HomeScreen.route: (context) => HomeScreen(),
        },
      ),
    );
  }
}
