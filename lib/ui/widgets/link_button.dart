import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkinbio/ui/themes.dart';
import 'package:linkinbio/utils/utils.dart';

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
        elevation: 1,
        child: InkWell(
          onTap: () => launchUrl(url!),
          borderRadius: borderRadius,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: isLandscape() ? 0.015.sw : 0.05.sw,
              vertical: isLandscape() ? 0.015.sh : 0.015.sh,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: isLandscape() ? 0.1.sw : 0.3.sw,
                maxWidth: isLandscape() ? 0.2.sw : 0.4.sw,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icon, size: Themes().iconSize),
                  SizedBox(width: isLandscape() ? 0.01.sw : 0.03.sw),
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      title!,
                      style: theme(context).textTheme.bodyText1!.copyWith(
                            fontSize: Themes().bodyTextSize2,
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
