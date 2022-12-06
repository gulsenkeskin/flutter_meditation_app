import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/view_constants/sign_in_constants.dart';
import 'package:flutter_meditation_app/core/components/image/image_asset_with_size.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/extensions/image_path_extension.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignInConstants? signInConstants = SignInConstants.instance!;

    return Material(
      type: MaterialType.transparency,
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
                  Positioned(
                      left: 0,
                      top: context.fem92,
                      child: Align(
                          child: ImageAssetWithSize(
                        width: context.fem254_9,
                        height: context.fem258_19,
                        imagePath: signInConstants.topImage1,
                      ))),
                  Positioned(
                      left: 0,
                      right: 0,
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
                                        right: context.fem103_42),
                                    width: context.fem204_31,
                                    height: context.fem161_56,
                                    imagePath: signInConstants.topImage2,
                                  ),
                                  ImageAssetWithSize(
                                      imagePath: signInConstants.topImage3,
                                      width: context.fem175_05,
                                      height: context.fem190_77),
                                  ImageAssetWithSize(
                                      width: context.fem242_71,
                                      height: context.fem232_66,
                                      imagePath: signInConstants.topImage4),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                  Positioned(
                      left: context.fem20,
                      top: context.fem204_31,
                      child: Container())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
