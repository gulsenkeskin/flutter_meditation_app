import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/color_constants.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';
import 'package:flutter_meditation_app/constants/font/font_contants.dart';
import 'package:flutter_meditation_app/constants/font/font_weight.dart';
import 'package:flutter_meditation_app/constants/view_constants/sign_up_and_sign_in_constants.dart';
import 'package:flutter_meditation_app/core/components/scroll/custom_scroll_behavior.dart';
import 'package:flutter_meditation_app/core/components/text/locale_text.dart';
import 'package:flutter_meditation_app/core/components/text/locale_text_span.dart';
import 'package:flutter_meditation_app/core/components/text/text_airbnb_ffem16.dart';
import 'package:flutter_meditation_app/core/components/text/text_ffem14.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/extensions/image_path_extension.dart';
import 'package:flutter_meditation_app/product/init/localization/locale_keys.g.dart';

class SignUpAndSignInView extends StatelessWidget {
  const SignUpAndSignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpAndSignInConstants? signUpAndSignInConstants =
        SignUpAndSignInConstants.instance!;

    final double fem504 = context.dynamicFem(504);
    final double fem423 = context.dynamicFem(423);
    final double fem40 = context.dynamicFem(40.6948242188);
    final double fem160 = context.dynamicFem(160);
    final double fem332_22 = context.dynamicFem(332.22);
    final double fem242_69 = context.dynamicFem(242.69);
    final double fem47_5 = context.dynamicFem(47.5);
    final double fem78 = context.dynamicFem(78);

    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: ListView(
        children: [
          SizedBox(
            height: fem504,
            child: Stack(
              children: [
                Positioned(
                    left: 0,
                    right: 0,
                    child: Align(
                      child: SizedBox(
                        width: fem423,
                        height: fem504,
                        child: signUpAndSignInConstants.framePath
                            .toImageAsset(width: fem423, height: fem504),
                      ),
                    )),
                Positioned(
                    left: context.fem123,
                    top: context.fem50,
                    child: SizedBox(
                      width: context.fem168,
                      height: context.fem30,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: context.fem, right: context.fem8),
                            child: const TextAirbnbFfem16(
                              text: LocaleKeys.slient,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: context.fem10),
                            width: context.fem30,
                            height: context.fem30,
                            child: signUpAndSignInConstants.logoPath
                                .toImageAsset(
                                    width: context.fem30,
                                    height: context.fem30),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: context.fem),
                            child: const TextAirbnbFfem16(
                              text: LocaleKeys.moon,
                            ),
                          ),
                        ],
                      ),
                    )),
                Positioned(
                    left: fem40,
                    top: fem160,
                    child: Align(
                      child: SizedBox(
                        width: fem332_22,
                        height: fem242_69,
                        child: signUpAndSignInConstants.imagePath
                            .toImageAsset(width: fem332_22, height: fem242_69),
                      ),
                    )),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(
                context.fem20, context.fem30, context.fem20, context.fem9),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin:
                      EdgeInsets.fromLTRB(fem47_5, 0, fem47_5, context.fem61),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: context.fem16),
                        child: LocaleText(
                          value: LocaleKeys.weAreWhatWeDo,
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(fontHelveticaNeue,
                              fontSize: context.ffem30,
                              fontWeight: titleWeight,
                              height: context.dynamicFFem(1.35) / context.fem,
                              color: titleColorDark),
                        ),
                      ),
                      Container(
                        constraints:
                            BoxConstraints(maxWidth: context.dynamicFFem(279)),
                        child: LocaleText(
                          value: LocaleKeys.thousandOf,
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(fontHelveticaNeue,
                              fontSize: context.ffem16,
                              fontWeight: subTitleWeight,
                              height: context.dynamicFFem(1.6499999762) /
                                  context.fem,
                              color: greatFalls),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: fem78),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(context.fem38),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    bottom: context.fem20,
                    right: context.fem20,
                    left: context.fem20,
                  ),
                  width: double.infinity,
                  height: context.fem63,
                  decoration: BoxDecoration(
                      color: blueBox,
                      borderRadius: BorderRadius.circular(context.fem38)),
                  child: const Center(
                      child: TextFfem14(
                    text: LocaleKeys.signUp,
                  )),
                ),
                Container(
                  margin: EdgeInsets.only(right: context.fem45),
                  child: RichText(
                    text: TextSpan(
                        style: textFfem14Style(context, black),
                        children: [
                          localeTextSpan(
                              value: LocaleKeys.alreadyHaveAccount,
                              style: textFfem14Style(context, greatFalls)),
                          const TextSpan(text: " "),
                          localeTextSpan(
                              value: LocaleKeys.logIn,
                              style: textFfem14Style(context, blueBox)),
                        ]),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(left: context.fem116, right: context.fem115),
            height: context.fem5,
            width: double.infinity,
            decoration: const BoxDecoration(color: extraordinaryAbundance),
          ),

        ],
      ),
    );
  }
}
