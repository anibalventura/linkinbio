import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkinbio/utils/utils.dart';

class Themes {
  static final String? _fontFamily = GoogleFonts.roboto().fontFamily;

  /*
  * Light Theme.
  */

  // Colors.
  static final Color _primaryColorLight = Colors.lightBlue;
  static final Color _lightPrimaryTextColor = Colors.black;
  static const Color _lightBackgroundColor = Colors.white;
  static final Color _lightButtonColor = Colors.grey.shade100;

  // Text Styles.
  static final TextStyle _lightHeadline1 = TextStyle(
    fontSize: screenPortrait() ? 24.sp : 34.sp,
    fontWeight: FontWeight.bold,
    fontFamily: GoogleFonts.itim().fontFamily,
    color: _lightPrimaryTextColor,
  );

  static final TextStyle _lightHeadline2 = _lightHeadline1.copyWith(
    fontSize: screenPortrait() ? 18.sp : 24.sp,
    letterSpacing: 0.5.sp,
    fontWeight: FontWeight.bold,
    fontFamily: GoogleFonts.sourceSansPro().fontFamily,
  );

  static final TextStyle _lightBodyText1 = _lightHeadline1.copyWith(
    fontSize: screenPortrait() ? 18.sp : 24.sp,
    fontFamily: GoogleFonts.lato().fontFamily,
  );

  // Icon.
  static final IconThemeData _iconThemeLight = IconThemeData(
    color: _primaryColorLight,
    size: screenPortrait() ? 0.05.sw : 0.03.sw,
  );

  // Final Theme.
  static final ThemeData lightTheme = ThemeData(
    primaryColor: _primaryColorLight,
    scaffoldBackgroundColor: _lightBackgroundColor,
    buttonColor: _lightButtonColor,
    iconTheme: _iconThemeLight,
    textTheme: TextTheme(
      headline1: _lightHeadline1,
      headline2: _lightHeadline2,
      bodyText1: _lightBodyText1,
    ),
    fontFamily: _fontFamily,
  );

  /*
  * Dark Theme.
  */

  // Colors.
  static final Color _primaryColorDark = Colors.lightBlue.shade700;
  static const Color _darkPrimaryTextColor = Colors.white;
  static final Color _darkBackgroundColor = Color(0xFF22252D);
  static final Color _darkButtonColor = Color(0xFF292D36);

  // Text Styles.
  static final TextStyle _darkHeadline1 = _lightHeadline1.copyWith(
    color: _darkPrimaryTextColor,
  );

  static final TextStyle _darkHeadline2 = _lightHeadline2.copyWith(
    color: _darkPrimaryTextColor,
  );

  static final TextStyle _darkBodyText1 = _lightBodyText1.copyWith(
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
    buttonColor: _darkButtonColor,
    iconTheme: _iconThemeDark,
    textTheme: TextTheme(
      headline1: _darkHeadline1,
      headline2: _darkHeadline2,
      bodyText1: _darkBodyText1,
    ),
    fontFamily: _fontFamily,
  );
}
