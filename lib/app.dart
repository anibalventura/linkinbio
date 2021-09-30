import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkinbio/ui/screens/profile_screen.dart';
import 'package:linkinbio/ui/themes.dart';
import 'package:linkinbio/utils/localizations.dart';

// ignore_for_file: prefer_const_constructors
class LinkinbioApp extends StatelessWidget {
  const LinkinbioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Init app with ScreenUtils for dynamic sizes.
    return ScreenUtilInit(
      builder: () => MaterialApp(
        title: '${LocaleTr.appName} - ${LocaleTr.user}',
        theme: Themes.lightTheme,
        darkTheme: Themes.darkTheme,
        routes: {
          ProfileScreen.route: (context) => ProfileScreen(),
        },
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
      ),
    );
  }
}
