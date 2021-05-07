import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenProvider extends ChangeNotifier {
  bool _portrait = true;
  bool get portrait => _portrait;

  void checkScreenOrientation() {
    if (ScreenUtil().orientation == Orientation.landscape) {
      _portrait = false;
    } else {
      _portrait = true;
    }
  }
}
