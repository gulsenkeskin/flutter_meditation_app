import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/color_constants.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/view/home/text_constants.dart';
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

  VerticalCardWidget verticalCard1Wrapper() => const VerticalCardWidget(
        imgPath: imgPathVC1,
        subTitle: subTitleVC1,
        bottomText: bottomTextVC1,
        title: titleVC1,
        btnText: btnTextVC1,
        boxColor: blueBox,
        titleColor: beige,
        subTitleColor: darkBeige,
        btnBgColor: lightGray,
        btnTitleColor: titleColorDark,
      );

  //30 min subtitlecolor
  VerticalCardWidget verticalCard2Wrapper() => const VerticalCardWidget(
        imgPath: imgPathVC2,
        subTitle: subTitleVC2,
        bottomText: bottomTextVC1,
        title: titleVC2,
        btnText: btnTextVC1,
        boxColor: beigeBox,
        titleColor: titleColorDark,
        subTitleColor: subTitleColorBlack,
        btnBgColor: titleColorDark,
        btnTitleColor: titleColorWhite,
      );
}
