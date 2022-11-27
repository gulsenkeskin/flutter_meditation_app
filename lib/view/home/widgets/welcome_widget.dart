import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';
import 'package:flutter_meditation_app/constants/enums/google_font_enum.dart';
import 'package:flutter_meditation_app/constants/font/font_weight.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/widgets/scroll/custom_scroll_behavior.dart';

class WelcomeWidget extends StatelessWidget {
  final String welcomeText;
  final String userName;
  const WelcomeWidget(
      {Key? key, required this.welcomeText, required this.userName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: context.dynamicFem(9)),
      child: Text(
        "$welcomeText , $userName",
        style: SafeGoogleFont(
          GoogleFontEnum.helveticaNeue.font,
          fontSize: context.dynamicFFem(28),
          fontWeight: titleWeight,
          height: context.welcomeTitleHeight,
          color: titleColorDark,
        ),
      ),
    );
  }
}
