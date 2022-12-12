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
  double get fem20 => dynamicFem(20);
  double get fem24 => dynamicFem(24);
  double get fem25 => dynamicFem(25);
  double get fem27 => dynamicFem(27);
  double get fem28 => dynamicFem(28);
  double get fem30 => dynamicFem(30);
  double get fem32 => dynamicFem(32);
  double get fem35 => dynamicFem(35);
  double get fem38 => dynamicFem(38);
  double get fem40 => dynamicFem(40);
  double get fem45 => dynamicFem(45);
  double get fem50 => dynamicFem(50);
  double get fem61 => dynamicFem(61);
  double get fem63 => dynamicFem(63);
  double get fem70 => dynamicFem(70);
  double get fem85 => dynamicFem(85);
  double get fem92 => dynamicFem(92);
  double get fem95 => dynamicFem(95);
  double get fem103 => dynamicFem(103);
  double get fem115 => dynamicFem(115);
  double get fem116 => dynamicFem(116);
  double get fem123 => dynamicFem(123);
  double get fem161 => dynamicFem(161);
  double get fem168 => dynamicFem(168);
  double get fem177 => dynamicFem(177);
  double get fem210 => dynamicFem(210);
  double get fem374 => dynamicFem(374);

  double get fem428_24 => dynamicFem(428.24);
  double get fem254_9 => dynamicFem(254.9);
  double get fem258_19 => dynamicFem(258.19);
  double get fem547_19 => dynamicFem(547.19);
  double get fem4_8 => dynamicFem(4.8);
  double get fem64_41 => dynamicFem(64.41);
  double get fem103_42 => dynamicFem(103.42);
  double get fem204_31 => dynamicFem(204.31);
  double get fem161_56 => dynamicFem(161.56);
  double get fem175_05 => dynamicFem(175.05);
  double get fem190_77 => dynamicFem(190.77);
  double get fem242_71 => dynamicFem(242.71);
  double get fem232_66 => dynamicFem(232.66);
  double get fem34_84 => dynamicFem(34.84);
  double get fem19_47 => dynamicFem(19.47);
  double get fem101_35 => dynamicFem(101.35);
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
  double get ffem30 => dynamicFFem(30);

  double get titleFontSize => dynamicFFem(16);
  double get titleHeight => dynamicFFem(1.2575) / fem;
  double get titleLetterSpacing => dynamicFem(3.84);

  double get welcomeTitleHeight => dynamicFFem(1.0809999875) / fem;
  double get minTitleHeight => dynamicFFem(1.0810000102) / fem;
  double get minSubTitleHeight => dynamicFFem(1.0809999813) / fem;
  double get minSubTitleLetterSpacing => dynamicFem(0.55);

  // double get lowValue => height * 0.01;
  // double get normalValue => height * 0.02;
  // double get mediumValue => height * 0.04;
  // double get highValue => height * 0.1;

  double dynamicFem(double val) => fem * val;
  double dynamicFFem(double val) => ffem * val;

  double dynamicWidth(double val) => width * val;
  double dynamicHeight(double val) => height * val;
}
