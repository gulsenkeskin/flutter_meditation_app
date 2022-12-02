import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/color_constants.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/view/home/home_constants.dart';
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
      subTitle: homeConstants.subTitleVC1,
      bottomText: homeConstants.bottomTextVC1,
      title: homeConstants.titleVC1,
      btnText: homeConstants.btnTextVC1,
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
      subTitle: homeConstants.subTitleVC2,
      bottomText: homeConstants.bottomTextVC1,
      title: homeConstants.titleVC2,
      btnText: homeConstants.btnTextVC1,
      boxColor: beigeBox,
      titleColor: titleColorDark,
      subTitleColor: subTitleColorBlack,
      btnBgColor: titleColorDark,
      btnTitleColor: titleColorWhite,
    );
  }
}
