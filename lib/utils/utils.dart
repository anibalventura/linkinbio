import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkinbio/services/localizations.dart';
import 'package:flutter/material.dart';

ThemeData theme(BuildContext context) => Theme.of(context);

String translate(BuildContext context, String text) =>
    AppLocalizations.of(context)!.trans(text)!;

bool isLandscape() => ScreenUtil().orientation == Orientation.landscape;
