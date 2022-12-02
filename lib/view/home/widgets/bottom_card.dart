import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';
import 'package:flutter_meditation_app/core/components/text/text_ffem11.dart';
import 'package:flutter_meditation_app/core/components/text/text_ffem18.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/extensions/image_path_extension.dart';
import 'package:flutter_meditation_app/product/init/localization/locale_keys.g.dart';

class BottomCard extends StatelessWidget {
  final String imagePath;
  final Color cardColor;
  final String title;
  const BottomCard(
      {Key? key,
      required this.imagePath,
      required this.cardColor,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double fem162 = context.dynamicFem(162);
    final double fem113_5 = context.dynamicFem(113.5);
    final double fem1_5 = context.dynamicFem(1.5);

    return SizedBox(
      width: fem162,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: context.dynamicFem(10.5),
            ),
            width: double.infinity,
            decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(context.fem10)),
            child: Center(
              child: SizedBox(
                width: fem162,
                height: fem113_5,
                child: imagePath.toImageAsset(width: fem162, height: fem113_5),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: context.fem3, bottom: context.fem5),
            child: TextFfem18(
              text: title,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: context.fem3, right: context.fem28),
            width: double.infinity,
            height: context.fem12,
            child: Row(
              children: [
                const TextFfem11(
                    text: LocaleKeys.meditation, fontColor: greatFalls),
                Container(
                  padding: EdgeInsets.only(left: context.fem15),
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: context.fem, right: context.fem5),
                        width: context.fem3,
                        height: context.fem3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(fem1_5),
                            color: greatFalls),
                      ),
                      const TextFfem11(
                        text: LocaleKeys.minute,
                        fontColor: greatFalls,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
