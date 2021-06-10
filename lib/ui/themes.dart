import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkinbio/utils/utils.dart';

/// All the styles for the app.
class Themes {
  /*
  * Sizes.
  */

  final double _headlineTextSize1 = isLandscape() ? 36.sp : 24.sp;
  double get headlineTextSize1 => _headlineTextSize1;

  final double _headlineTextSize2 = isLandscape() ? 26.sp : 18.sp;
  double get headlineTextSize2 => _headlineTextSize2;

  final double _bodyTextSize1 = isLandscape() ? 24.sp : 18.sp;
  double get bodyTextSize1 => _bodyTextSize1;

  final double _bodyTextSize2 = isLandscape() ? 14.sp : 12.sp;
  double get bodyTextSize2 => _bodyTextSize2;

  final double _iconSize = isLandscape() ? 0.03.sw : 0.05.sw;
  double get iconSize => _iconSize;

  /*
  * Colors.
  */

  // Light.
  static final Color _primaryColorLight = Colors.lightBlue;
  static final Color _lightPrimaryTextColor = Colors.black;
  static const Color _lightBackgroundColor = Colors.white;
  static final Color _lightButtonColor = Colors.grey.shade100;

  // Dark.
  static final Color _primaryColorDark = Colors.lightBlue.shade700;
  static const Color _darkPrimaryTextColor = Colors.white;
  static const Color _darkBackgroundColor = Color(0xFF22252D);
  static const Color _darkButtonColor = Color(0xFF292D36);

  /*
  * Styles.
  */

  static final TextStyle _headlineText1 = TextStyle(
    color: _lightPrimaryTextColor,
    fontWeight: FontWeight.bold,
    fontFamily: GoogleFonts.itim().fontFamily,
  );

  static final TextStyle _headlineText2 = _headlineText1.copyWith(
    letterSpacing: 0.5.sp,
    fontWeight: FontWeight.w500,
    fontFamily: GoogleFonts.sourceSansPro().fontFamily,
  );

  static final TextStyle _bodyText1 = _headlineText1.copyWith(
    fontWeight: FontWeight.w300,
    fontFamily: GoogleFonts.lato().fontFamily,
  );

  /*
  * Themes.
  */

  /// Light.
  static final ThemeData lightTheme = ThemeData(
    primaryColor: _primaryColorLight,
    scaffoldBackgroundColor: _lightBackgroundColor,
    buttonColor: _lightButtonColor,
    iconTheme: IconThemeData(
      color: _primaryColorLight,
    ),
    textTheme: TextTheme(
      headline1: _headlineText1,
      headline2: _headlineText2,
      bodyText1: _bodyText1,
    ),
    fontFamily: GoogleFonts.roboto().fontFamily,
  );

  /// Dark.
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: _primaryColorDark,
    scaffoldBackgroundColor: _darkBackgroundColor,
    buttonColor: _darkButtonColor,
    iconTheme: IconThemeData(
      color: _primaryColorDark,
    ),
    textTheme: TextTheme(
      headline1: _headlineText1.copyWith(
        color: _darkPrimaryTextColor,
      ),
      headline2: _headlineText2.copyWith(
        color: _darkPrimaryTextColor,
      ),
      bodyText1: _bodyText1.copyWith(
        color: _darkPrimaryTextColor,
      ),
    ),
  );
}
