import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  AppLocalizations(this._locale);

  final Locale _locale;

  /* 
  Helper method to keep the code in the widgets concise.
  Localizations are accessed using an InheritedWidget "of" syntax.
  */
  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  // Allowing simple access to the delegate from the MaterialApp.
  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  late Map<String, String> _localizedStrings;

  // Load the language JSON file from the "lang" folder.
  Future<bool> load() async {
    final String jsonString =
        await rootBundle.loadString('assets/lang/${_locale.languageCode}.json');
    final Map<String, dynamic> jsonMap =
        json.decode(jsonString) as Map<String, dynamic>;

    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });

    return true;
  }

  // Method will be called from every widgets which needs a localized text.
  String? trans(String key) => _localizedStrings[key];
}

/*
LocalizationsDelegate is a factory for a set of localized resources.
In this case, the localized strings will be gotten in an AppLocalizations object.
*/
class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  // Include all supported language codes here.
  bool isSupported(Locale locale) => ['en', 'es'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async {
    // AppLocalizations class is where the JSON loading actually runs.
    final AppLocalizations localizations = AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

// Texts to translate.
class AppText {
  static String appLanguage = 'appLanguage';
  static String textAppName = 'appName';

  /*
  * Home Screen.
  */

  static String title = 'title';
  static String portfolio = 'portfolio';
}
