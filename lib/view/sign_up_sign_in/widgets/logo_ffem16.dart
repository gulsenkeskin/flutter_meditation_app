import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/view_constants/sign_up_and_sign_in_constants.dart';
import 'package:flutter_meditation_app/core/components/image/image_asset_with_size.dart';
import 'package:flutter_meditation_app/core/components/text/text_airbnb_ffem16.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/product/init/localization/locale_keys.g.dart';

class LogoFfem16 extends StatelessWidget {
  const LogoFfem16({
    super.key,
  });

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

    return SizedBox(
      height: fem504,
      child: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Align(
                  child: ImageAssetWithSize(
                width: fem423,
                height: fem504,
                imagePath: signUpAndSignInConstants.framePath,
              ))),
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
                    ImageAssetWithSize(
                        margin: EdgeInsets.only(right: context.fem10),
                        width: context.fem30,
                        height: context.fem30,
                        imagePath: signUpAndSignInConstants.logoPath),
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
                child: ImageAssetWithSize(
                  width: fem332_22,
                  height: fem242_69,
                  imagePath: signUpAndSignInConstants.imagePath,
                ),
              )),
        ],
      ),
    );
  }
}
