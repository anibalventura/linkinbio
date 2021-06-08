# Linkinbio

[![Flutter](https://img.shields.io/static/v1?label=Flutter&message=2.2&color=blue)](https://flutter.dev/)
[![Null Safety](https://img.shields.io/static/v1?label=Null+Safety&message=YES&color=success)](https://flutter.dev/docs/null-safety)
[![Flutter Support](https://img.shields.io/static/v1?label=Support&message=Web%20&color=blue)]()
[![License](https://img.shields.io/static/v1?label=License&message=MIT&color=blue)](LICENCE.md)

<img src="assets/images/repository_banner.png" align="center"/>

Simple web page for share clickable links to individual pages or products in your social media accounts.

See live preview [here](https://linkinbio.anibalventura.com/).

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
- [url_strategy](https://pub.dev/packages/url_strategy)

### Dev Dependencies

- [flutter_native_splash](https://pub.dev/packages/flutter_native_splash)
- [lint](https://pub.dev/packages/lint)

# License

```xml
MIT License

Copyright (c) 2021 Anibal Ventura

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
