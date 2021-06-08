import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkinbio/services/localizations.dart';
import 'package:flutter/material.dart';

// Return app theme as show in ui/themes.dart
ThemeData theme(BuildContext context) => Theme.of(context);

// Return a translate string with the support of localizations.
// Check utils/texts.dart for more info.
String translate(BuildContext context, String text) =>
    AppLocalizations.of(context)!.trans(text)!;

// Check if the device is in landscape or portrait.
bool isLandscape() => ScreenUtil().orientation == Orientation.landscape;
