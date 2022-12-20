import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/constants/color_constants.dart';
import 'package:flutter_meditation_app/constants/font/font_color.dart';

class CustomInputTheme {
  TextStyle _buildTextStyle(Color color, {double size = 16.0}) {
    return TextStyle(color: color, fontSize: size);
  }

  OutlineInputBorder _buildBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        borderSide: BorderSide(color: color, width: 1.0));
  }

  InputDecorationTheme theme() => InputDecorationTheme(
      contentPadding: const EdgeInsets.all(16),
      isDense: true,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      constraints: const BoxConstraints(maxWidth: 374, maxHeight: 90),
      // enabledBorder: _buildBorder(Colors.grey[600]!),
      enabledBorder: _buildBorder(Colors.transparent),
      errorBorder: _buildBorder(Colors.red),
      focusedErrorBorder: _buildBorder(Colors.red),
      focusedBorder: _buildBorder(Colors.transparent),
      disabledBorder: _buildBorder(Colors.grey[400]!),
      // suffixStyle: _buildTextStyle(Colors.purple),
      counterStyle: _buildTextStyle(Colors.grey, size: 12.0),
      floatingLabelStyle: _buildTextStyle(greatFalls),
      errorStyle: _buildTextStyle(Colors.red, size: 12.0),
      helperStyle: _buildTextStyle(greatFalls, size: 12.0),
      hintStyle: _buildTextStyle(greatFalls),
      labelStyle: _buildTextStyle(greatFalls),
      prefixStyle: _buildTextStyle(Colors.greenAccent),
      filled: true,
      fillColor: alpineGoat);
}
