import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/view/sign_up_sign_in/widgets/already_have_account_text.dart';
import 'package:flutter_meditation_app/view/sign_up_sign_in/widgets/bottom_divider.dart';
import 'package:flutter_meditation_app/view/sign_up_sign_in/widgets/center_text.dart';
import 'package:flutter_meditation_app/view/sign_up_sign_in/widgets/logo_ffem16.dart';
import 'package:flutter_meditation_app/view/sign_up_sign_in/widgets/sign_up_btn.dart';

class SignUpAndSignInView extends StatelessWidget {
  const SignUpAndSignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double fem78 = context.dynamicFem(78);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              const LogoFfem16(),
              Container(
                width: double.infinity,
                padding: EdgeInsets.fromLTRB(
                    context.fem20, context.fem30, context.fem20, context.fem9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CenterText(),
                    Container(
                      margin: EdgeInsets.only(bottom: fem78),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(context.fem38),
                      ),
                      child: Column(
                        children: const [
                          SignUpButton(),
                          AlreadyHaveAccountText()
                        ],
                      ),
                    ),
                    const BottomDivider(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
