import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';

class BottomDivider extends StatelessWidget {
  const BottomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: context.fem116, right: context.fem115),
      height: context.fem5,
      width: double.infinity,
      decoration:
      const BoxDecoration(color: extraordinaryAbundance),
    );
  }
}
