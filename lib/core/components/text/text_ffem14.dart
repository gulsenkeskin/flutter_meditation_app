import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';
import 'package:flutter_meditation_app/constants/font/font_contants.dart';
import 'package:flutter_meditation_app/constants/font/font_weight.dart';
import 'package:flutter_meditation_app/core/components/text/locale_text.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/core/components/scroll/custom_scroll_behavior.dart';

class TextFfem14 extends StatelessWidget {
  final String text;
  final Color? fontColor;
  final FontWeight? fontWeight;

  const TextFfem14(
      {Key? key, required this.text, this.fontColor, this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LocaleText(
      value: text,
      style: textFfem14Style(context, fontColor, fontWeight: fontWeight),
    );
  }
}

TextStyle textFfem14Style(BuildContext context, Color? fontColor,
    {FontWeight? fontWeight}) {
  return SafeGoogleFont(fontHelveticaNeue,
      fontSize: context.dynamicFFem(14),
      fontWeight: fontWeight ?? minSubTitleWeight,
      height: context.welcomeTitleHeight,
      color: fontColor ?? cloudBreak,
      letterSpacing: context.dynamicFem(0.7));
}
