import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/font/font_contants.dart';
import 'package:flutter_meditation_app/constants/font/font_weight.dart';
import 'package:flutter_meditation_app/core/components/image/image_asset_with_size.dart';
import 'package:flutter_meditation_app/core/components/text/locale_text.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/core/components/scroll/custom_scroll_behavior.dart';
import 'package:flutter_meditation_app/product/init/localization/locale_keys.g.dart';

class LogoTitle extends StatelessWidget {
  final String logoPath;
  final Color titleColor;
  const LogoTitle({Key? key, required this.logoPath, required this.titleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    EdgeInsets marginTopRight =
        EdgeInsets.only(top: context.fem, right: context.fem8);

    EdgeInsets marginTop = EdgeInsets.only(top: context.fem);

    return Container(
      margin:
          EdgeInsets.fromLTRB(context.fem103, 0, context.fem123, context.fem40),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          title(context, LocaleKeys.slient, marginTopRight, titleColor),
          logo(context, logoPath),
          title(context, LocaleKeys.moon, marginTop, titleColor),
        ],
      ),
    );
  }

  ImageAssetWithSize logo(BuildContext context, String logoPath) {
    return ImageAssetWithSize(
        margin: EdgeInsets.only(right: context.fem10),
        width: context.fem30,
        height: context.fem30,
        imagePath: logoPath);
  }

  Container title(BuildContext context, String title, EdgeInsetsGeometry margin,
      Color titleColor) {
    return Container(
      margin: margin,
      child: LocaleText(
        value: title,
        style: SafeGoogleFont(
          fontAirbnbCerealApp,
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
