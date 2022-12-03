import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/color_constants.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/product/init/localization/locale_keys.g.dart';
import 'package:flutter_meditation_app/constants/view_constants/home_constants.dart';
import 'package:flutter_meditation_app/view/home/widgets/vertical_card_widget.dart';

class CenterCards extends StatelessWidget {
  const CenterCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: context.fem20, bottom: context.fem20),
        width: double.infinity,
        height: context.fem210,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            verticalCard1Wrapper(),
            verticalCard2Wrapper(),
          ],
        ));
  }

  VerticalCardWidget verticalCard1Wrapper() {
    HomeConstants? homeConstants = HomeConstants.instance!;

    return VerticalCardWidget(
      imgPath: homeConstants.imgPathVC1,
      subTitle: LocaleKeys.course,
      bottomText: LocaleKeys.minute,
      title: LocaleKeys.basics,
      btnText: LocaleKeys.button_start,
      boxColor: blueBox,
      titleColor: beige,
      subTitleColor: darkBeige,
      btnBgColor: lightGray,
      btnTitleColor: titleColorDark,
    );
  }

  //30 min subtitlecolor
  VerticalCardWidget verticalCard2Wrapper() {
    HomeConstants? homeConstants = HomeConstants.instance!;

    return VerticalCardWidget(
      imgPath: homeConstants.imgPathVC2,
      subTitle: LocaleKeys.music,
      bottomText: LocaleKeys.minute,
      title: LocaleKeys.relaxion,
      btnText: LocaleKeys.button_start,
      boxColor: beigeBox,
      titleColor: titleColorDark,
      subTitleColor: subTitleColorBlack,
      btnBgColor: titleColorDark,
      btnTitleColor: titleColorWhite,
    );
  }
}
