import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkinbio/provider/screen_provider.dart';
import 'package:linkinbio/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  LinkButton({
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

    return Consumer<ScreenProvider>(
      builder: (context, screen, child) {
        screen.checkScreenOrientation();

        return Container(
          margin: EdgeInsets.symmetric(
              vertical: screen.portrait ? 0.01.sh : 0.005.sw),
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
                  horizontal: screen.portrait ? 0.05.sw : 0.03.sw,
                  vertical: screen.portrait ? 0.015.sh : 0.02.sh,
                ),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: screen.portrait ? 0.4.sw : 0.15.sw,
                    maxWidth: screen.portrait ? 0.5.sw : 0.3.sw,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(icon, size: screen.portrait ? 0.05.sw : 0.03.sw),
                      SizedBox(width: screen.portrait ? 0.03.sw : 0.01.sw),
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          title!,
                          style: theme(context).textTheme.bodyText1!.copyWith(
                                fontSize: screen.portrait ? 18.sp : 24.sp,
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
      },
    );
  }
}
