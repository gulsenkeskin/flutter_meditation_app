import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/color_constants.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';
import 'package:flutter_meditation_app/constants/view_constants/sign_in_constants.dart';
import 'package:flutter_meditation_app/core/components/image/image_asset_with_size.dart';
import 'package:flutter_meditation_app/core/components/text/text_ffem14.dart';
import 'package:flutter_meditation_app/core/components/text/text_ffem28.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/product/init/localization/locale_keys.g.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignInConstants? signInConstants = SignInConstants.instance!;

    final fem187 = context.dynamicFem(187);

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: context.fem40),
                  width: double.infinity,
                  height: context.fem428_24,
                  child: Stack(
                    children: [
                      //TODO TOP IMAGES
                      Positioned(
                          left: 0,
                          top: context.fem92,
                          child: ImageAssetWithSize(
                            width: context.fem254_9,
                            height: context.fem258_19,
                            imagePath: signInConstants.topImage1,
                          )),
                      Positioned(
                          left: 0,
                          top: 0,
                          child: SizedBox(
                            width: context.fem547_19,
                            height: context.fem428_24,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      right: context.fem64_41,
                                      bottom: context.fem4_8),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      ImageAssetWithSize(
                                        margin: EdgeInsets.only(
                                            right: context.fem103),
                                        width: context.fem204_31,
                                        height: context.fem161_56,
                                        imagePath: signInConstants.topImage2,
                                      ),
                                      ImageAssetWithSize(
                                          imagePath: signInConstants.topImage3,
                                          width: context.fem175_05,
                                          height: context.fem190_77),
                                    ],
                                  ),
                                ),
                                ImageAssetWithSize(
                                    width: context.fem242_71,
                                    height: context.fem232_66,
                                    imagePath: signInConstants.topImage4),
                              ],
                            ),
                          )),
                      //TODO BUTTONS
                      Positioned(
                        left: context.fem20,
                        top: context.fem204_31,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              context.fem34_84,
                              context.fem19_47,
                              context.fem101_35,
                              context.fem19_47),
                          width: context.fem374,
                          height: context.fem63,
                          decoration: BoxDecoration(
                              color: violetsAreBlue,
                              borderRadius:
                                  BorderRadius.circular(context.fem38)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ImageAssetWithSize(
                                  margin: EdgeInsets.only(right: context.fem45),
                                  width: context.fem12,
                                  height: context.fem24,
                                  imagePath: signInConstants.facebookIcon),
                              Container(
                                margin: EdgeInsets.only(top: context.fem2),
                                child: const TextFfem14(
                                    text: LocaleKeys.continueWithFaceBook),
                              )
                            ],
                          ),
                        ),
                      ),
                      //TODO FACEBOOK BTN END
                      //TODO welcomeback text
                      Positioned(
                          left: context.fem103,
                          top: context.fem133,
                          child: SizedBox(
                            width: fem187,
                            height: context.fem38,
                            child: const TextFfem28(
                              text: LocaleKeys.welcomeBack,
                            ),
                          )),
                      Positioned(
                          left: context.fem20,
                          top: context.fem287,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(context.fem29,
                                context.fem19, context.fem117, context.fem19),
                            width: context.fem374,
                            height: context.fem63,
                            decoration: BoxDecoration(
                                border: Border.all(color: lightGray),
                                borderRadius:
                                    BorderRadius.circular(context.fem38)),
                            child: Row(
                              children: [
                                ImageAssetWithSize(
                                    margin:
                                        EdgeInsets.only(right: context.fem40),
                                    width: context.fem23,
                                    height: context.fem24,
                                    imagePath: signInConstants.googleIcon),
                                Container(
                                    margin: EdgeInsets.only(top: context.fem2),
                                    child: const TextFfem14(
                                      text: LocaleKeys.continueWithGoogle,
                                      fontColor: titleColorDark,
                                    ))
                              ],
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
