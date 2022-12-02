import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/color_constants.dart';
import 'package:flutter_meditation_app/constants/enums/google_font_enum.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';
import 'package:flutter_meditation_app/constants/font/font_weight.dart';
import 'package:flutter_meditation_app/core/components/text/locale_text.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/extensions/image_path_extension.dart';
import 'package:flutter_meditation_app/widgets/scroll/custom_scroll_behavior.dart';
import 'package:flutter_meditation_app/widgets/text/text_ffem18.dart';

class RecomendedWidget extends StatelessWidget {
  final String text;
  const RecomendedWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double fem162 = context.dynamicFem(162);
    final double fem526 = context.dynamicFem(526);
    final double fem113 = context.dynamicFem(113.5);

    const String img = "mask-group-PWr";
    const String title = "Focus";
    const String subTitle = "MEDITATION";
    const String subTitleMinute = "3-10 MIN";

    final String font = GoogleFontEnum.helveticaNeue.font;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        recomendedTextWidget(context, font),
        SizedBox(
          width: fem526,
          height: context.fem161,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(
                width: fem162,
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        bottom: context.dynamicFem(10.5),
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: greenBox,
                          borderRadius: BorderRadius.circular(context.fem10)),
                      child: Center(
                        child: SizedBox(
                          width: fem162,
                          height: fem113,
                          child:
                              img.toImageAsset(width: fem162, height: fem113),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: context.fem3, bottom: context.fem5),
                      child: const TextFfem18(
                        text: title,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Container recomendedTextWidget(BuildContext context, String font) {
    return Container(
      margin: EdgeInsets.only(bottom: context.fem20),
      child: LocaleText(
        value: text,
        style: SafeGoogleFont(
          font,
          fontSize: context.ffem24,
          fontWeight: minSubTitleWeight,
          height: context.minTitleHeight,
          color: titleColorDark,
        ),
      ),
    );
  }
}
