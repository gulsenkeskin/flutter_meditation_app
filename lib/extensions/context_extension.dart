import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;
  TextTheme get primaryTextTheme => Theme.of(this).primaryTextTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  ThemeData get appTheme => Theme.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double get baseWidth => 414;

  double get fem => width / baseWidth;
  double get ffem => fem * 0.97;

  double get fem10 => fem * 10;
  double get fem15 => fem * 15;
  double get fem20 => fem * 20;
  double get fem25 => fem * 25;
  double get fem30 => fem * 30;
  double get fem32 => fem * 32;
  double get fem35 => fem * 35;
  double get fem70 => fem * 70;
  double get fem85 => fem * 85;
  double get fem177 => fem * 177;
  double get fem210 => fem * 210;

  double get ffem11 => ffem * 11;
  double get ffem12 => ffem * 12;
  double get ffem18 => ffem * 18;

  double get titleFontSize => dynamicFFem(16);
  double get titleHeight => dynamicFFem(1.2575) / fem;
  double get titleLetterSpacing => dynamicFem(3.84);

  double get welcomeTitleHeight => dynamicFFem(1.0809999875) / fem;

  // double get lowValue => height * 0.01;
  // double get normalValue => height * 0.02;
  // double get mediumValue => height * 0.04;
  // double get highValue => height * 0.1;

  double dynamicFem(double val) => fem * val;
  double dynamicFFem(double val) => ffem * val;

  double dynamicWidth(double val) => width * val;
  double dynamicHeight(double val) => height * val;
}
