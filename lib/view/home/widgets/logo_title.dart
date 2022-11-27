import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/extensions/image_path_extension.dart';
import 'package:flutter_meditation_app/widgets/scroll/custom_scroll_behavior.dart';

class LogoTitle extends StatelessWidget {
  final String logoPath;
  final Color titleColor;
  const LogoTitle({Key? key, required this.logoPath, required this.titleColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String title1 = "Slient";
    EdgeInsets margin1 =
        EdgeInsets.fromLTRB(0, context.dynamicFem(1), context.dynamicFem(8), 0);

    EdgeInsets margin2 = EdgeInsets.fromLTRB(0, context.dynamicFem(1), 0, 0);

    const String title2 = "Moon";
    return Container(
      margin: EdgeInsets.fromLTRB(context.dynamicFem(103), 0,
          context.dynamicFem(123), context.dynamicFem(40)),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          title(context, title1, margin1,titleColor),
          logo(context,logoPath),
          title(context, title2, margin2,titleColor),
        ],
      ),
    );
  }

  Container logo(BuildContext context, String logoPath) {

    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, context.dynamicFem(10), 0),
      width: context.fem30,
      height: context.fem30,
      child: logoPath.toImageAsset(height: context.fem30, width: context.fem30),
    );
  }

  Container title(
      BuildContext context, String title, EdgeInsetsGeometry margin, Color titleColor) {
    return Container(
      margin: margin,
      child: Text(
        title,
        style: SafeGoogleFont(
          'Airbnb Cereal App',
          fontSize: context.titleFontSize,
          fontWeight: FontWeight.w700,
          height: context.titleHeight,
          letterSpacing: context.titleLetterSpacing,
          color: titleColor,
        ),
      ),
    );
  }
}
