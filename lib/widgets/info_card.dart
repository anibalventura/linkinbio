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
      margin: EdgeInsets.symmetric(vertical: 0.01.sh),
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
              horizontal: 0.05.sw,
              vertical: 0.015.sh,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 0.4.sw,
                maxWidth: 0.5.sw,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    icon,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 0.03.sw),
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
