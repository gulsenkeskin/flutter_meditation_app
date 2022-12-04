import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';
import 'package:flutter_meditation_app/constants/font/font_contants.dart';
import 'package:flutter_meditation_app/constants/font/font_weight.dart';
import 'package:flutter_meditation_app/core/components/scroll/custom_scroll_behavior.dart';
import 'package:flutter_meditation_app/core/components/text/locale_text.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';
import 'package:flutter_meditation_app/product/init/localization/locale_keys.g.dart';

class CenterText extends StatelessWidget {
  const CenterText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double fem47_5 = context.dynamicFem(47.5);

    return Container(
      margin: EdgeInsets.fromLTRB(fem47_5, 0, fem47_5, context.fem61),
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
            constraints: BoxConstraints(maxWidth: context.dynamicFFem(279)),
            child: LocaleText(
              value: LocaleKeys.thousandOf,
              textAlign: TextAlign.center,
              style: SafeGoogleFont(fontHelveticaNeue,
                  fontSize: context.ffem16,
                  fontWeight: subTitleWeight,
                  height: context.dynamicFFem(1.6499999762) / context.fem,
                  color: greatFalls),
            ),
          )
        ],
      ),
    );
  }
}
