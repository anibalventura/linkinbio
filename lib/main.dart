import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkinbio/ui/screens/profile_screen.dart';
import 'package:linkinbio/services/localizations.dart';
import 'package:linkinbio/ui/themes.dart';
import 'package:linkinbio/utils/texts.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Set URL strategy for the web app.
  // This delete the leading hast (#) on web page URL.
  setPathUrlStrategy();

  runApp(
    // Init app with ScreenUtils for dynamic sizes.
    ScreenUtilInit(builder: () => const LinkinbioApp()),
  );
}

class LinkinbioApp extends StatelessWidget {
  const LinkinbioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '${Texts.appName} - ${Texts.user}',
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      routes: {
        ProfileScreen.route: (context) => const ProfileScreen(),
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
        for (final supportedLocale in supportedLocales) {
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
