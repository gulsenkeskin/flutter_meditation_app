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
  double get ffem => dynamicFem(0.97);

  double get fem2 => dynamicFem(2);
  double get fem3 => dynamicFem(3);
  double get fem5 => dynamicFem(5);
  double get fem8 => dynamicFem(8);
  double get fem9 => dynamicFem(9);
  double get fem10 => dynamicFem(10);
  double get fem11 => dynamicFem(11);
  double get fem12 => dynamicFem(12);
  double get fem15 => dynamicFem(15);
  double get fem16 => dynamicFem(16);
  double get fem19 => dynamicFem(19);
  double get fem20 => dynamicFem(20);
  double get fem23 => dynamicFem(23);
  double get fem24 => dynamicFem(24);
  double get fem25 => dynamicFem(25);
  double get fem27 => dynamicFem(27);
  double get fem28 => dynamicFem(28);
  double get fem29 => dynamicFem(29);
  double get fem30 => dynamicFem(30);
  double get fem32 => dynamicFem(32);
  double get fem35 => dynamicFem(35);
  double get fem38 => dynamicFem(38);
  double get fem40 => dynamicFem(40);
  double get fem45 => dynamicFem(45);
  double get fem50 => dynamicFem(50);
  double get fem55 => dynamicFem(55);
  double get fem61 => dynamicFem(61);
  double get fem63 => dynamicFem(63);
  double get fem64 => dynamicFem(64);
  double get fem70 => dynamicFem(70);
  double get fem85 => dynamicFem(85);
  double get fem92 => dynamicFem(92);
  double get fem95 => dynamicFem(95);
  double get fem101 => dynamicFem(101);
  double get fem103 => dynamicFem(103);
  double get fem115 => dynamicFem(115);
  double get fem116 => dynamicFem(116);
  double get fem117 => dynamicFem(117);
  double get fem123 => dynamicFem(123);
  double get fem133 => dynamicFem(133);
  double get fem161 => dynamicFem(161);
  double get fem162 => dynamicFem(162);
  double get fem168 => dynamicFem(168);
  double get fem175 => dynamicFem(175);
  double get fem177 => dynamicFem(177);
  double get fem191 => dynamicFem(191);
  double get fem204 => dynamicFem(204);
  double get fem210 => dynamicFem(210);
  double get fem233 => dynamicFem(233);
  double get fem243 => dynamicFem(243);
  double get fem254 => dynamicFem(254);
  double get fem258 => dynamicFem(258);
  double get fem287 => dynamicFem(287);
  double get fem374 => dynamicFem(374);
  double get fem428 => dynamicFem(428);
  double get fem429 => dynamicFem(429);
  double get fem547 => dynamicFem(547);

  // double get fem=>dynamicFem();
  // double get fem=>dynamicFem();
  // double get fem=>dynamicFem();
  // double get fem=>dynamicFem();
  // double get fem=>dynamicFem();
  // double get fem=>dynamicFem();
  // double get fem=>dynamicFem();
  // double get fem=>dynamicFem();
  // double get fem=>dynamicFem();
  // double get fem=>dynamicFem();
  // double get fem=>dynamicFem();
  // double get fem=>dynamicFem();
  // double get fem=>dynamicFem();
  // double get fem=>dynamicFem();
  // double get fem=>dynamicFem();
  // double get fem=>dynamicFem();
  // double get fem=>dynamicFem();

  double get ffem11 => dynamicFFem(11);
  double get ffem12 => dynamicFFem(12);
  double get ffem16 => dynamicFFem(16);
  double get ffem18 => dynamicFFem(18);
  double get ffem24 => dynamicFFem(24);
  double get ffem28 => dynamicFFem(28);
  double get ffem30 => dynamicFFem(30);

  double get titleFontSize => dynamicFFem(16);
  double get titleHeight => dynamicFFem(1.2575) / fem;
  double get titleLetterSpacing => dynamicFem(3.84);
  double get hintTextLetterSpacing => dynamicFem(0.8);

  double get welcomeTitleHeight => dynamicFFem(1.0809999875) / fem;
  double get minTitleHeight => dynamicFFem(1.0810000102) / fem;
  double get minSubTitleHeight => dynamicFFem(1.0809999813) / fem;
  double get minSubTitleLetterSpacing => dynamicFem(0.55);

  double get hintTextHeight=> dynamicFFem(1.0809999704)/fem;

  // double get lowValue => height * 0.01;
  // double get normalValue => height * 0.02;
  // double get mediumValue => height * 0.04;
  // double get highValue => height * 0.1;

  double dynamicFem(double val) => fem * val;
  double dynamicFFem(double val) => ffem * val;

  double dynamicWidth(double val) => width * val;
  double dynamicHeight(double val) => height * val;
}
