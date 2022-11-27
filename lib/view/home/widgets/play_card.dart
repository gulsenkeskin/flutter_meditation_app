import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/color_constants.dart';
import 'package:flutter_meditation_app/constants/enums/google_font_enum.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';
import 'package:flutter_meditation_app/constants/font/font_weight.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/extensions/image_path_extension.dart';
import 'package:flutter_meditation_app/widgets/scroll/custom_scroll_behavior.dart';

class PlayCard extends StatelessWidget {
  const PlayCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String img = "mask-group-A3t";
    const String title = "Daily Thought";
    const String subTitle = "MEDITATION";
    const String minuteTitle = "3-10 MIN";
    const String playImgPath = "group-6-kNN";

    final double subTitleFem = context.dynamicFem(1.5);

    final String font = GoogleFontEnum.helveticaNeue.font;

    return Container(
      margin: EdgeInsets.only(right: context.fem20, bottom: context.fem40),
      padding: EdgeInsets.symmetric(
          horizontal: context.fem30, vertical: context.fem27),
      width: double.infinity,
      height: context.fem95,
      decoration: BoxDecoration(
          color: darkPlayBox,
          borderRadius: BorderRadius.circular(context.fem10),
          image: DecorationImage(fit: BoxFit.cover, image: img.assetImage())),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: context.dynamicFem(143)),
            width: context.dynamicFem(131),
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                titleWidget(context, title, font),
                subTitleWidget(
                    context, subTitle, font, subTitleFem, minuteTitle)
              ],
            ),
          ),
          playButton(context, playImgPath)
        ],
      ),
    );
  }

  SizedBox subTitleWidget(BuildContext context, String subTitle, String font,
      double subTitleFem, String minuteTitle) {
    return SizedBox(
      width: double.infinity,
      height: context.fem12,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            subTitle,
            style: SafeGoogleFont(font,
                fontSize: context.ffem11,
                fontWeight: minSubTitleWeight,
                height: context.minSubTitleHeight,
                letterSpacing: context.minSubTitleLetterSpacing,
                color: subTitleColorLightGrey),
          ),
          Container(
            padding: EdgeInsets.only(left: context.fem15),
            height: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin:
                      EdgeInsets.only(right: context.fem5, bottom: context.fem),
                  width: context.fem3,
                  height: context.fem3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(subTitleFem),
                      color: subTitleColorLightGrey),
                ),
                Text(
                  minuteTitle,
                  style: SafeGoogleFont(font,
                      fontSize: context.ffem11,
                      fontWeight: minSubTitleWeight,
                      height: context.minSubTitleHeight,
                      letterSpacing: context.minSubTitleLetterSpacing,
                      color: subTitleColorLightGrey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container playButton(BuildContext context, String playImgPath) {
    return Container(
      margin: EdgeInsets.only(top: context.fem),
      width: context.fem40,
      height: context.fem40,
      child:
          playImgPath.toImageAsset(width: context.fem40, height: context.fem40),
    );
  }

  Container titleWidget(BuildContext context, String title, String font) {
    return Container(
      margin: EdgeInsets.only(bottom: context.fem9),
      child: Text(
        title,
        style: SafeGoogleFont(font,
            fontSize: context.ffem18,
            fontWeight: titleWeight,
            height: context.minTitleHeight,
            color: titleColorWhite),
      ),
    );
  }
}
