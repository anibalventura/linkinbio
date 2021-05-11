import 'package:flutter/material.dart';
import 'package:linkinbio/utils/localizations.dart';
import 'package:linkinbio/utils/utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          color: theme(context).buttonColor,
          padding: EdgeInsets.symmetric(
            vertical: screenPortrait() ? 0.01.sh : 0.02.sh,
          ),
          child: Text(
            '© ${DateTime.now().year} ${AppText.user}',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: theme(context).textTheme.headline1!.color,
              fontSize: screenPortrait() ? 12.sp : 18.sp,
            ),
          ),
        ),
      ),
    );
  }
}
