import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/core/components/buttons/blue_button.dart';
import 'package:flutter_meditation_app/product/init/localization/locale_keys.g.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const BlueButton(text: LocaleKeys.signUp);
  }
}
