import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/color_constants.dart';
import 'package:flutter_meditation_app/core/components/text/text_ffem14.dart';
import 'package:flutter_meditation_app/extensions/context_extension.dart';

class BlueButton extends StatelessWidget {
  final String text;
  const BlueButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: context.fem20,
      ),
      width: double.infinity,
      height: context.fem63,
      decoration: BoxDecoration(
          color: blueBox, borderRadius: BorderRadius.circular(context.fem38)),
      child: Center(
          child: TextFfem14(
        text: text,
      )),
    );
  }
}
