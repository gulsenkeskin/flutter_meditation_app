import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/enums/google_font_enum.dart';
import 'package:flutter_meditation_app/constants/font/font_weight.dart';
import 'package:flutter_meditation_app/core/components/text/locale_text.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/extensions/image_path_extension.dart';
import 'package:flutter_meditation_app/core/components/scroll/custom_scroll_behavior.dart';

class LogoTitle extends StatelessWidget {
  final String logoPath;
  final Color titleColor;
  const LogoTitle({Key? key, required this.logoPath, required this.titleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String title1 = "Slient";
    EdgeInsets margin1 = EdgeInsets.only(
        top: context.dynamicFem(1), right: context.dynamicFem(8));

    EdgeInsets margin2 = EdgeInsets.only(top: context.dynamicFem(1));

    const String title2 = "Moon";
    return Container(
      margin: EdgeInsets.fromLTRB(context.dynamicFem(103), 0,
          context.dynamicFem(123), context.dynamicFem(40)),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          title(context, title1, margin1, titleColor),
          logo(context, logoPath),
          title(context, title2, margin2, titleColor),
        ],
      ),
    );
  }

  Container logo(BuildContext context, String logoPath) {
    return Container(
      margin: EdgeInsets.only(right: context.dynamicFem(10)),
      width: context.fem30,
      height: context.fem30,
      child: logoPath.toImageAsset(height: context.fem30, width: context.fem30),
    );
  }

  Container title(BuildContext context, String title, EdgeInsetsGeometry margin,
      Color titleColor) {
    return Container(
      margin: margin,
      child: LocaleText(
        value: title,
        style: SafeGoogleFont(
          GoogleFontEnum.airbnbCerealApp.font,
          fontSize: context.titleFontSize,
          fontWeight: titleWeight,
          height: context.titleHeight,
          letterSpacing: context.titleLetterSpacing,
          color: titleColor,
        ),
      ),
    );
  }
}
