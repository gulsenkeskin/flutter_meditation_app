import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/font/font_contants.dart';
import 'package:flutter_meditation_app/constants/font/font_weight.dart';
import 'package:flutter_meditation_app/core/components/image/image_asset_with_size.dart';
import 'package:flutter_meditation_app/core/components/text/locale_text.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/extensions/image_path_extension.dart';
import 'package:flutter_meditation_app/core/components/scroll/custom_scroll_behavior.dart';
import 'package:flutter_meditation_app/core/components/text/text_ffem18.dart';

class PlayCard extends StatelessWidget {
  final Color playBoxColor;
  final String img;
  final String title;
  final String subTitle;
  final String minuteTitle;
  final String playImgPath;
  final Color subTitleColor;
  final Color titleColor;

  const PlayCard(
      {Key? key,
      required this.playBoxColor,
      required this.img,
      required this.title,
      required this.subTitle,
      required this.minuteTitle,
      required this.playImgPath,
      required this.subTitleColor,
      required this.titleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double subTitleFem = context.dynamicFem(1.5);

    return Container(
      margin: EdgeInsets.only(right: context.fem20, bottom: context.fem40),
      padding: EdgeInsets.symmetric(
          horizontal: context.fem30, vertical: context.fem27),
      width: double.infinity,
      height: context.fem95,
      decoration: BoxDecoration(
          color: playBoxColor,
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
                titleWidget(context, title, fontHelveticaNeue),
                subTitleWidget(context, subTitle, fontHelveticaNeue,
                    subTitleFem, minuteTitle)
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
          LocaleText(
            value: subTitle,
            style: SafeGoogleFont(font,
                fontSize: context.ffem11,
                fontWeight: minSubTitleWeight,
                height: context.minSubTitleHeight,
                letterSpacing: context.minSubTitleLetterSpacing,
                color: subTitleColor),
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
                      color: subTitleColor),
                ),
                LocaleText(
                  value: minuteTitle,
                  style: SafeGoogleFont(font,
                      fontSize: context.ffem11,
                      fontWeight: minSubTitleWeight,
                      height: context.minSubTitleHeight,
                      letterSpacing: context.minSubTitleLetterSpacing,
                      color: subTitleColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  ImageAssetWithSize playButton(BuildContext context, String playImgPath) {
    return ImageAssetWithSize(
      margin: EdgeInsets.only(top: context.fem),
      width: context.fem40,
      height: context.fem40,
      imagePath: playImgPath,
    );
  }

  Container titleWidget(BuildContext context, String title, String font) {
    return Container(
      margin: EdgeInsets.only(bottom: context.fem9),
      child: TextFfem18(text: title, fontColor: titleColor),
    );
  }
}
