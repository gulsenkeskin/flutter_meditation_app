import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/color_constants.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';
import 'package:flutter_meditation_app/core/components/text/locale_text_span.dart';
import 'package:flutter_meditation_app/core/components/text/text_ffem14.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/product/init/localization/locale_keys.g.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: context.fem20,
      ),
      width: double.infinity,
      height: context.fem63,
      decoration: BoxDecoration(
          color: blueBox, borderRadius: BorderRadius.circular(context.fem38)),
      child: const Center(
          child: TextFfem14(
        text: LocaleKeys.signUp,
      )),
    );
  }
}
