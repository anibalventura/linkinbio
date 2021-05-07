import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkinbio/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoCard extends StatelessWidget {
  InfoCard({
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
    final borderRadius = BorderRadius.all(Radius.circular(50.r));

    return Container(
      margin:
          EdgeInsets.symmetric(vertical: screenPortrait() ? 0.01.sh : 0.005.sw),
      child: Material(
        color: backgroundColor ?? theme(context).cardColor,
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
              horizontal: screenPortrait() ? 0.05.sw : 0.03.sw,
              vertical: screenPortrait() ? 0.015.sh : 0.02.sh,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: screenPortrait() ? 0.35.sw : 0.15.sw,
                maxWidth: screenPortrait() ? 0.5.sw : 0.3.sw,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icon),
                  SizedBox(width: screenPortrait() ? 0.03.sw : 0.01.sw),
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      title!,
                      style: TextStyle(
                        fontFamily: GoogleFonts.sourceSansPro().fontFamily,
                        color: theme(context).textTheme.headline1!.color,
                        fontSize: 18.sp,
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
