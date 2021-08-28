import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// Return app theme as show in ui/themes.dart
ThemeData theme(BuildContext context) => Theme.of(context);

// Check if the device is in landscape or portrait.
bool isLandscape() => ScreenUtil().orientation == Orientation.landscape;

// Launch URL helper.
void launchUrl(String url) async {
  await canLaunch(url)
      ? await launch(url)
      // ignore: only_throw_errors
      : throw 'Could not launch $url!';
}
