# Linkinbio

[![Flutter](https://img.shields.io/static/v1?label=Flutter&message=2.2&color=blue)](https://flutter.dev/)
[![Null Safety](https://img.shields.io/static/v1?label=Null+Safety&message=YES&color=success)](https://flutter.dev/docs/null-safety)
[![Flutter Support](https://img.shields.io/static/v1?label=Support&message=Web%20|%20Android%20|%20iOS&color=blue)]()

<img src="app/repository-banner.png" align="center"/>

Simple web page for share clickable links to individual pages or products in your social media accounts.

See live preview [here](https://anibalventura.com/linkinbio/).

## Features

- Responsive design.
- Profile picture.
- Title and subtitle.
- Buttons that open links.
- Support for night mode.
- Languages: English and Spanish.

## Build

A release build uses dart2js (instead of the development compiler) to produce a single JavaScript file main.dart.js. You can create a release build using release mode (flutter run --release) or by using (flutter build web). This populates a build/web directory with built files, including an assets directory, which need to be served together.

You can also include --web-renderer html or --web-renderer canvaskit to select between the HTML or CanvasKit renderers, respectively. For more information, see [Web renderers](https://flutter.dev/docs/development/tools/web-renderers).

For more information, see [Build and release a web app](https://flutter.dev/docs/deployment/web).

## Dependencies

- [flutter_screenutil](https://pub.dev/packages/flutter_screenutil)
- [font_awesome_flutter](https://pub.dev/packages/font_awesome_flutter)
- [google_fonts](https://pub.dev/packages/google_fonts)
- [url_launcher](https://pub.dev/packages/url_launcher)

### Dev Dependencies
- [lint](https://pub.dev/packages/lint)
- [flutter_native_splash](https://pub.dev/packages/flutter_native_splash)

# License

```xml
Copyright 2021 Anibal Ventura
```

