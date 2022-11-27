import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/enums/google_font_enum.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/widgets/scroll/custom_scroll_behavior.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String welcomeText="Good Morning";
    const String userName="Gülsen";


    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, context.dynamicFem(9)),
      child: Text(
        "$welcomeText , $userName",
        style: SafeGoogleFont(GoogleFontEnum.helveticaNeue.font),

        ),


    );
  }
}
