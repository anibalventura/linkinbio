import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AdaptiveText extends StatelessWidget {
  const AdaptiveText({
    this.text,
    this.textAlign,
    this.style,
    Key? key,
  }) : super(key: key);

  final String? text;
  final TextAlign? textAlign;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? SelectableText(
            text!,
            textAlign: textAlign,
            style: style,
            toolbarOptions: const ToolbarOptions(
              copy: true,
              selectAll: true,
              cut: false,
              paste: false,
            ),
          )
        : Text(
            text!,
            textAlign: textAlign,
            style: style,
          );
  }
}
