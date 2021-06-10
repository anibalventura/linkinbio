import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkinbio/ui/themes.dart';
import 'package:linkinbio/ui/widgets/adaptive_text.dart';
import 'package:linkinbio/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({
    this.icon,
    this.title,
    this.url,
    this.backgroundColor,
    Key? key,
  }) : super(key: key);

  final IconData? icon;
  final String? title;
  final String? url;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.all(Radius.circular(15.r));

    return Container(
      margin: EdgeInsets.symmetric(
        vertical: isLandscape() ? 0.005.sh : 0.01.sw,
      ),
      child: Material(
        color: backgroundColor ?? theme(context).buttonColor,
        borderRadius: borderRadius,
        child: InkWell(
          onTap: () async {
            await canLaunch(url!)
                ? await launch(url!)
                // ignore: only_throw_errors
                : throw 'Could not launch $url!';
          },
          borderRadius: borderRadius,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isLandscape() ? 0.03.sw : 0.05.sw,
              vertical: isLandscape() ? 0.02.sh : 0.015.sh,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: isLandscape() ? 0.25.sw : 0.4.sw,
                maxWidth: isLandscape() ? 0.3.sw : 0.5.sw,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icon, size: Themes().iconSize),
                  SizedBox(width: isLandscape() ? 0.01.sw : 0.03.sw),
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: AdaptiveText(
                      text: title,
                      style: theme(context).textTheme.bodyText1!.copyWith(
                            fontSize: Themes().bodyTextSize1,
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
