import 'package:linkinbio/utils/localizations.dart';
import 'package:flutter/material.dart';

String translate(BuildContext context, String text) {
  return AppLocalizations.of(context)!.trans(text)!;
}

ThemeData theme(BuildContext context) {
  return Theme.of(context);
}
