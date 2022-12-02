import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/core/extensions/string_extensions.dart';

class LocaleText extends StatelessWidget {
  final String value;
  final TextStyle? style;
  const LocaleText({Key? key, required this.value, this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(value.locale, style: style,);
  }
}
