import 'package:flutter/material.dart';
import 'package:linkinbio/ui/widgets/adaptive_text.dart';
import 'package:linkinbio/utils/texts.dart';
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
            vertical: isPortrait() ? 0.01.sh : 0.02.sh,
          ),
          child: AdaptiveText(
            text: '© ${DateTime.now().year} ${Texts.user}',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: theme(context).textTheme.headline1!.color,
              fontSize: isPortrait() ? 12.sp : 18.sp,
            ),
          ),
        ),
      ),
    );
  }
}
