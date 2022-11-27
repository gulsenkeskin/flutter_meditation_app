import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/widgets/scroll/custom_scroll_behavior.dart';

class LogoTitle extends StatelessWidget {
  const LogoTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String title2 = "Moon";
    return Container(
      margin: EdgeInsets.fromLTRB(context.dynamicFem(103), 0,
          context.dynamicFem(123), context.dynamicFem(40)),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [slientTitle(context), Container(
          margin: EdgeInsets.fromLTRB(0, 0, context.dynamicFem(10), 0),
          width: context.fem30,
          height: context.fem30,
          child: Image.network(),
        )],
      ),
    );
  }

  Container slientTitle(BuildContext context) {
    const String title1 = "Slient";
    const Color titleColor = Color(0xff3f414e);
    return Container(
      margin: EdgeInsets.fromLTRB(
          0, context.dynamicFem(1), context.dynamicFem(8), 0),
      child: Text(
        title1,
        style: SafeGoogleFont(
          'Airbnb Cereal App',
          fontSize: context.dynamicFFem(16),
          fontWeight: FontWeight.w700,
          height: context.dynamicFFem(1.2575) / context.fem,
          letterSpacing: context.dynamicFem(3.84),
          color: titleColor,
        ),
      ),
    );
  }
}
