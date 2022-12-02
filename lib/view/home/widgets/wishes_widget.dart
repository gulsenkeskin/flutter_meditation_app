import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/enums/google_font_enum.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';
import 'package:flutter_meditation_app/constants/font/font_weight.dart';
import 'package:flutter_meditation_app/core/components/text/locale_text.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/widgets/scroll/custom_scroll_behavior.dart';

class WishesWidget extends StatelessWidget {
  final String wish;
  const WishesWidget({Key? key, required this.wish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: context.dynamicFem(30)),
      child: LocaleText(
        value: wish,
        style: SafeGoogleFont(GoogleFontEnum.helveticaNeue.font,
            fontSize: context.dynamicFFem(20),
            fontWeight: subTitleWeight,
            height: context.welcomeTitleHeight,
            color: subTitleColorGrey),
      ),
    );
  }
}
