import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:linkinbio/app.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  // Binding widgets.
  WidgetsFlutterBinding.ensureInitialized();

  // Set URL strategy for the web app.
  // This delete the leading hast (#) on web page URL.
  setPathUrlStrategy();

  // Init locale translations.
  await EasyLocalization.ensureInitialized();

  runApp(
    // Init locale translations.
    EasyLocalization(
      path: 'assets/lang',
      fallbackLocale: const Locale('en'),
      supportedLocales: const [
        Locale('en'),
        Locale('es'),
      ],
      // ignore: prefer_const_constructors
      child: LinkinbioApp(),
    ),
  );
}
