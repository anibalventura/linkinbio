import 'package:flutter/material.dart';
import 'package:linkinbio/utils/utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageFooter extends StatelessWidget {
  const PageFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          color: theme(context).buttonColor,
          padding: EdgeInsets.symmetric(
            vertical: isLandscape() ? 0.02.sh : 0.01.sh,
          ),
          child: InkWell(
            onTap: () => launchUrl('https://anibalventura.com/'),
            child: Text(
              '© ${DateTime.now().year} Anibal Ventura',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: theme(context).textTheme.headline1!.color,
                fontSize: isLandscape() ? 14.sp : 12.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
