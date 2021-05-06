import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Themes {
  static final String? _fontFamily = GoogleFonts.roboto().fontFamily;

  /*
  * Light Theme.
  */

  // Colors.
  static final Color _primaryColorLight = Colors.lightBlue;
  static const Color _lightBackgroundColor = Colors.white;
  static const Color _lightButtonColor = Colors.white;
  static final Color _lightCardColor = Colors.grey.shade100;
  static final Color _lightPrimaryTextColor = Colors.black;

  // Text Styles.
  static final TextStyle _lightHeadline1 = TextStyle(
    fontSize: 40.sp,
    fontWeight: FontWeight.w400,
    color: _lightPrimaryTextColor,
  );

  static final TextStyle _lightHeadline2 = _lightHeadline1.copyWith(
    fontSize: 30.sp,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle _lightBodyText1 = _lightBodyText2.copyWith(
    color: Colors.lightGreen,
  );

  static final TextStyle _lightBodyText2 = _lightHeadline1.copyWith(
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
  );

  // Icon.
  static final IconThemeData _iconThemeLight = IconThemeData(
    color: _primaryColorLight,
    size: 0.05.sw,
  );

  // Final Theme.
  static final ThemeData lightTheme = ThemeData(
    primaryColor: _primaryColorLight,
    scaffoldBackgroundColor: _lightBackgroundColor,
    backgroundColor: _lightBackgroundColor,
    buttonColor: _lightButtonColor,
    cardColor: _lightCardColor,
    primaryIconTheme: _iconThemeLight,
    iconTheme: _iconThemeLight,
    textTheme: TextTheme(
      headline1: _lightHeadline1,
      headline2: _lightHeadline2,
      bodyText1: _lightBodyText1,
      bodyText2: _lightBodyText2,
    ),
    fontFamily: _fontFamily,
  );

  /*
  * Dark Theme.
  */

  // Colors.
  static final Color _primaryColorDark = Colors.lightBlue.shade700;
  static final Color _darkBackgroundColor = Color(0xFF22252D);
  static final Color _darkButtonColor = Color(0xFF22252D);
  static final Color _darkCardColor = Color(0xFF292D36);
  static const Color _darkPrimaryTextColor = Colors.white;

  // Text Styles.
  static final TextStyle _darkHeadline1 = _lightHeadline1.copyWith(
    color: _darkPrimaryTextColor,
  );

  static final TextStyle _darkHeadline2 = _lightHeadline2.copyWith(
    color: _darkPrimaryTextColor,
  );

  static final TextStyle _darkBodyText1 = _darkBodyText2.copyWith(
    color: Colors.lightGreen.shade700,
  );

  static final TextStyle _darkBodyText2 = _lightBodyText2.copyWith(
    color: _darkPrimaryTextColor,
  );

  // Icon.
  static final IconThemeData _iconThemeDark = _iconThemeLight.copyWith(
    color: _primaryColorDark,
  );

  // Final Theme.
  static final ThemeData darkTheme = ThemeData(
    primaryColor: _primaryColorDark,
    scaffoldBackgroundColor: _darkBackgroundColor,
    backgroundColor: _darkBackgroundColor,
    cardColor: _darkCardColor,
    buttonColor: _darkButtonColor,
    primaryIconTheme: _iconThemeDark,
    iconTheme: _iconThemeDark,
    textTheme: TextTheme(
      headline1: _darkHeadline1,
      headline2: _darkHeadline2,
      bodyText1: _darkBodyText1,
      bodyText2: _darkBodyText2,
    ),
    fontFamily: _fontFamily,
  );
}
