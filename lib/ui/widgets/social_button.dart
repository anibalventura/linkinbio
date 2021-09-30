import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkinbio/utils/utils.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    Key? key,
    this.label,
    this.icon,
    this.backgroundColor,
    this.url,
  }) : super(key: key);

  final String? label;
  final IconData? icon;
  final Color? backgroundColor;
  final String? url;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20.r),
      onTap: () => launchUrl(url!),
      child: CircleAvatar(
        radius: 15.r,
        backgroundColor: backgroundColor,
        child: Icon(
          icon,
          color: Colors.white,
          semanticLabel: label,
        ),
      ),
    );
  }
}
