import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/color_constants.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';
import 'package:flutter_meditation_app/core/components/text/locale_text_span.dart';
import 'package:flutter_meditation_app/core/components/text/text_ffem14.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/product/init/localization/locale_keys.g.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: context.fem45),
      child: RichText(
        text: TextSpan(style: textFfem14Style(context, black), children: [
          localeTextSpan(
              value: LocaleKeys.alreadyHaveAccount,
              style: textFfem14Style(context, greatFalls)),
          const TextSpan(text: " "),
          localeTextSpan(
              value: LocaleKeys.logIn,
              style: textFfem14Style(context, blueBox)),
        ]),
      ),
    );
  }
}
