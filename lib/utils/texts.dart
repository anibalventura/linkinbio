/// Texts to translate with localizations.

/*
* How to add texts to translate?
1. Add the texts you want to translate in the JSONs on
assets/lang/en.json and assets/lang/es.json or create
a new JSON file with a new language.

2. Add a static const with the same name on the JSONs
as shows bellow.

3. (OPTIONAL) If added a new language, add the locale to
supportedLocales in main.dart

4. Use the translate util with the text. Example:
    translate(context, Texts.title)
*/
class Texts {
  static const String appName = 'Linkinbio';
  static const String user = 'Anibal Ventura';

  /// Profile Screen.
  static const String title = 'title';
  static const String androidApps = 'androidApps';
  static const String iOSApps = 'iOSApps';
  static const String gitHub = 'gitHub';
  static const String linkedIn = 'linkedIn';
  static const String portfolio = 'portfolio';
}
