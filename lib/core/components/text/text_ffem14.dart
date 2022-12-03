import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/enums/google_font_enum.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';
import 'package:flutter_meditation_app/constants/font/font_contants.dart';
import 'package:flutter_meditation_app/constants/font/font_weight.dart';
import 'package:flutter_meditation_app/core/components/text/locale_text.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/core/components/scroll/custom_scroll_behavior.dart';

class TextFfem14 extends StatelessWidget {
  final String text;
  final Color? fontColor;
  const TextFfem14({Key? key, required this.text, this.fontColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LocaleText(
      value: text,
      style: textFfem14Style(context, fontColor),
    );
  }
}

TextStyle textFfem14Style(BuildContext context, Color? fontColor) {
  return SafeGoogleFont(fontHelveticaNeue,
      fontSize: context.dynamicFFem(14),
      fontWeight: minSubTitleWeight,
      height: context.welcomeTitleHeight,
      color: fontColor ?? cloudBreak,
      letterSpacing: context.dynamicFem(0.7));
}
