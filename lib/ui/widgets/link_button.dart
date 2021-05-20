import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkinbio/ui/widgets/adaptive_text.dart';
import 'package:linkinbio/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({
    @required this.icon,
    @required this.title,
    this.url,
    this.backgroundColor,
  });

  final IconData? icon;
  final String? title;
  final String? url;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.all(Radius.circular(15.r));

    return Container(
      margin: EdgeInsets.symmetric(
        vertical: isPortrait() ? 0.01.sh : 0.005.sw,
      ),
      child: Material(
        color: backgroundColor ?? theme(context).buttonColor,
        borderRadius: borderRadius,
        child: InkWell(
          onTap: () async {
            await canLaunch(url!)
                ? await launch(url!)
                : throw 'Could not launch $url!';
          },
          borderRadius: borderRadius,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isPortrait() ? 0.05.sw : 0.03.sw,
              vertical: isPortrait() ? 0.015.sh : 0.02.sh,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: isPortrait() ? 0.4.sw : 0.25.sw,
                maxWidth: isPortrait() ? 0.5.sw : 0.3.sw,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icon, size: isPortrait() ? 0.05.sw : 0.03.sw),
                  SizedBox(width: isPortrait() ? 0.03.sw : 0.01.sw),
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: AdaptiveText(
                      text: title,
                      style: theme(context).textTheme.bodyText1!.copyWith(
                            fontSize: isPortrait() ? 18.sp : 24.sp,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
