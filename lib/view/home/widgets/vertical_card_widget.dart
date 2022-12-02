import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/enums/google_font_enum.dart';
import 'package:flutter_meditation_app/constants/font/font_weight.dart';
import 'package:flutter_meditation_app/core/components/text/locale_text.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/extensions/image_path_extension.dart';
import 'package:flutter_meditation_app/core/components/scroll/custom_scroll_behavior.dart';
import 'package:flutter_meditation_app/core/components/text/text_ffem18.dart';

class VerticalCardWidget extends StatelessWidget {
  final String imgPath;
  final String title;
  final String subTitle;
  final String bottomText;
  final String btnText;
  final Color boxColor;
  final Color titleColor;
  final Color subTitleColor;
  final Color btnBgColor;
  final Color btnTitleColor;

  const VerticalCardWidget({
    Key? key,
    required this.imgPath,
    required this.title,
    required this.subTitle,
    required this.bottomText,
    required this.btnText,
    required this.boxColor,
    required this.titleColor,
    required this.subTitleColor,
    required this.btnBgColor,
    required this.btnTitleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: context.fem20),
      padding: EdgeInsets.fromLTRB(
          context.fem15, context.fem85, context.fem15, context.fem15),
      width: context.fem177,
      height: double.infinity,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(context.fem10),
        image: DecorationImage(fit: BoxFit.cover, image: imgPath.assetImage()),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalCardCenter(
              title: title,
              subTitle: subTitle,
              titleColor: titleColor,
              subTitleColor: subTitleColor),
          VerticalCardBottom(
            bottomText: bottomText,
            btnText: btnText,
            btnBgColor: btnBgColor,
            btnTitleColor: btnTitleColor,
          )
        ],
      ),
    );
  }
}

class VerticalCardBottom extends StatelessWidget {
  const VerticalCardBottom({
    super.key,
    required this.bottomText,
    required this.btnText,
    required this.btnBgColor,
    required this.btnTitleColor,
  });

  final String bottomText;
  final String btnText;
  final Color btnBgColor;
  final Color btnTitleColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: context.fem35,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: context.fem, right: context.fem32),
            child: LocaleText(
              value: bottomText,
              style: SafeGoogleFont(GoogleFontEnum.helveticaNeue.font,
                  fontSize: context.ffem11,
                  fontWeight: minSubTitleWeight,
                  height: context.minSubTitleHeight,
                  letterSpacing: context.minSubTitleLetterSpacing,
                  color: btnBgColor),
            ),
          ),
          Container(
            width: context.fem70,
            height: double.infinity,
            decoration: BoxDecoration(
                color: btnBgColor,
                borderRadius: BorderRadius.circular(context.fem25)),
            child: Center(
              child: LocaleText(
                value: btnText,
                style: SafeGoogleFont(GoogleFontEnum.helveticaNeue.font,
                    fontSize: context.ffem12,
                    fontWeight: minSubTitleWeight,
                    height: context.minTitleHeight,
                    letterSpacing: context.dynamicFem(0.6),
                    color: btnTitleColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class VerticalCardCenter extends StatelessWidget {
  const VerticalCardCenter({
    super.key,
    required this.title,
    required this.subTitle,
    required this.titleColor,
    required this.subTitleColor,
  });

  final String title;
  final String subTitle;
  final Color titleColor;
  final Color subTitleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: context.dynamicFem(35.32)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(bottom: context.dynamicFem(7.68)),
              child: TextFfem18(
                text: title,
                fontColor: titleColor,
              )),
          LocaleText(
            value: subTitle,
            style: SafeGoogleFont(GoogleFontEnum.helveticaNeue.font,
                fontSize: context.dynamicFFem(11),
                fontWeight: minSubTitleWeight,
                height: context.minSubTitleHeight,
                letterSpacing: context.minSubTitleLetterSpacing,
                color: subTitleColor),
          )
        ],
      ),
    );
  }
}
