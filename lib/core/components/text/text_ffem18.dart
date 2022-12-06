import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';
import 'package:flutter_meditation_app/constants/font/font_contants.dart';
import 'package:flutter_meditation_app/constants/font/font_weight.dart';
import 'package:flutter_meditation_app/core/components/text/locale_text.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/core/components/scroll/custom_scroll_behavior.dart';

class TextFfem18 extends StatelessWidget {
  final String text;
  final Color? fontColor;
  const TextFfem18({Key? key, required this.text, this.fontColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return LocaleText(
      value: text,
      style: SafeGoogleFont(
        fontHelveticaNeue,
        fontSize: context.ffem18,
        fontWeight: titleWeight,
        height: context.minTitleHeight,
        color: fontColor ?? titleColorDark,
      ),
    );
  }
}
