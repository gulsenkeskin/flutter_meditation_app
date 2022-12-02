import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/color_constants.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/models/card_item.dart';
import 'package:flutter_meditation_app/product/init/localization/locale_keys.g.dart';
import 'package:flutter_meditation_app/view/home/home_constants.dart';
import 'package:flutter_meditation_app/view/home/widgets/bottom_card.dart';

class BottomCards extends StatelessWidget {
  const BottomCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double fem526 = context.dynamicFem(526);
    HomeConstants? homeConstants = HomeConstants.instance!;

    final cardList = [
      CardItem(LocaleKeys.focus, homeConstants.bottomImgPath1, greenBox),
      CardItem(LocaleKeys.happines, homeConstants.bottomImgPath2, bachimitsuGold),
      CardItem(LocaleKeys.focus, homeConstants.bottomImgPath1, greenBox)
    ];

    return SizedBox(
        width: fem526,
        height: context.fem161,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            width: context.fem20,
          ),
          itemBuilder: (BuildContext context, int index) {
            var cardItem = cardList[index];
            return BottomCard(
                imagePath: cardItem.imagePath,
                cardColor: cardItem.cardColor,
                title: cardItem.title);
          },
        ));
  }
}
