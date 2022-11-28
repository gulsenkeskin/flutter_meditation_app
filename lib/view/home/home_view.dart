import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/color_constants.dart';

import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/view/home/text_constants.dart';
import 'package:flutter_meditation_app/view/home/widgets/center_cards.dart';
import 'package:flutter_meditation_app/view/home/widgets/logo_title.dart';
import 'package:flutter_meditation_app/view/home/widgets/play_card.dart';
import 'package:flutter_meditation_app/view/home/widgets/welcome_widget.dart';
import 'package:flutter_meditation_app/view/home/widgets/wishes_widget.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(
                    left: context.dynamicFem(20), top: context.dynamicFem(50)),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    LogoTitle(logoPath: logoPath, titleColor: titleColorDark),
                    WelcomeWidget(
                      welcomeText: welcomeText,
                      userName: userName,
                    ),
                    WishesWidget(wish: wish),
                    CenterCards(),
                    PlayCard(
                      playBoxColor: darkPlayBox,
                      img: playCardImg,
                      title: playCardTitle,
                      subTitle: playCardSubTitle,
                      minuteTitle: playCardMinute,
                      playImgPath: playCardPlayImgPath,
                      subTitleColor: subTitleColorLightGrey,
                      titleColor: titleColorWhite,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
