import 'package:flutter/material.dart';
import 'package:linkinbio/provider/screen_provider.dart';
import 'package:linkinbio/utils/utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ScreenProvider>(builder: (context, screen, child) {
      screen.checkScreenOrientation();

      return Expanded(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            color: theme(context).buttonColor,
            padding: EdgeInsets.symmetric(
              vertical: screen.portrait ? 0.01.sh : 0.02.sh,
            ),
            child: Text(
              '© 2021 Anibal Ventura',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: theme(context).textTheme.headline1!.color,
                fontSize: screen.portrait ? 12.sp : 18.sp,
              ),
            ),
          ),
        ),
      );
    });
  }
}
