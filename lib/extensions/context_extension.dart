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



  double get fem30 => fem * 30;

  double get titleFontSize=> dynamicFFem(16);
  double get titleHeight=> dynamicFFem(1.2575) / fem;
  double get titleLetterSpacing=> dynamicFem(3.84);



  // double get lowValue => height * 0.01;
  // double get normalValue => height * 0.02;
  // double get mediumValue => height * 0.04;
  // double get highValue => height * 0.1;

  double dynamicFem(double val) => fem * val;
  double dynamicFFem(double val) => ffem * val;

  double dynamicWidth(double val) => width * val;
  double dynamicHeight(double val) => height * val;

}


