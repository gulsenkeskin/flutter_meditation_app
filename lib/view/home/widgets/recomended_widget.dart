import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/enums/google_font_enum.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';
import 'package:flutter_meditation_app/constants/font/font_weight.dart';
import 'package:flutter_meditation_app/core/components/text/locale_text.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/core/components/scroll/custom_scroll_behavior.dart';

class RecomendedWidget extends StatelessWidget {
  final String text;
  const RecomendedWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String font = GoogleFontEnum.helveticaNeue.font;

    return Container(
      margin: EdgeInsets.only(bottom: context.fem20),
      child: LocaleText(
        value: text,
        style: SafeGoogleFont(
          font,
          fontSize: context.ffem24,
          fontWeight: minSubTitleWeight,
          height: context.minTitleHeight,
          color: titleColorDark,
        ),
      ),
    );
  }
}
