import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/core/extensions/string_extensions.dart';

TextSpan localeTextSpan({required String value, TextStyle? style}) {
  return TextSpan(
    text: value.locale,
    style: style,
  );
}
