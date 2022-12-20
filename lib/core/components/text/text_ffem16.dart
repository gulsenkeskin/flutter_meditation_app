import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';
import 'package:flutter_meditation_app/constants/font/font_contants.dart';
import 'package:flutter_meditation_app/core/components/scroll/custom_scroll_behavior.dart';
import 'package:flutter_meditation_app/core/components/text/locale_text.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/constants/font/font_weight.dart';

class TextFfem16 extends StatelessWidget {
  final String text;
  final Color? fontColor;
  const TextFfem16({Key? key, required this.text, this.fontColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LocaleText(
      value: text,
      style: SafeGoogleFont(fontHelveticaNeue,
          fontSize: context.ffem16,
          fontWeight: subTitleWeight,
          height: context.hintTextHeight,
          color: fontColor ?? greatFalls,
          letterSpacing: context.hintTextHeight),
    );
  }
}
