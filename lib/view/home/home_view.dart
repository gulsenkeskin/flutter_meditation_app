import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/color_constants.dart';

import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/view/home/home_constants.dart';
import 'package:flutter_meditation_app/view/home/widgets/center_cards.dart';
import 'package:flutter_meditation_app/view/home/widgets/logo_title.dart';
import 'package:flutter_meditation_app/view/home/widgets/play_card.dart';
import 'package:flutter_meditation_app/view/home/widgets/recomended_widget.dart';
import 'package:flutter_meditation_app/view/home/widgets/welcome_widget.dart';
import 'package:flutter_meditation_app/view/home/widgets/wishes_widget.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeConstants? homeConstants = HomeConstants.instance!;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            left: context.dynamicFem(20), top: context.dynamicFem(50)),
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            LogoTitle(
                logoPath: homeConstants.logoPath, titleColor: titleColorDark),
            WelcomeWidget(
              welcomeText: homeConstants.welcomeText,
              userName: homeConstants.userName,
            ),
            WishesWidget(wish: homeConstants.wish),
            const CenterCards(),
            PlayCard(
              playBoxColor: darkPlayBox,
              img: homeConstants.playCardImg,
              title: homeConstants.playCardTitle,
              subTitle: homeConstants.playCardSubTitle,
              minuteTitle: homeConstants.playCardMinute,
              playImgPath: homeConstants.playCardPlayImgPath,
              subTitleColor: subTitleColorLightGrey,
              titleColor: titleColorWhite,
            ),
            RecomendedWidget(
              text: homeConstants.recomendedText,
            )
          ],
        ),
      ),
    );
  }
}
