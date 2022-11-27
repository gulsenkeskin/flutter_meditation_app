import 'package:flutter/material.dart';

enum ImagePaths {
// ignore: constant_identifier_names
  auto_group_2uke,
  2,

}

extension ImagePathsExtension on ImagePaths {
  String path() {
    return 'assets/images/$name.png';
  }

  Widget toWidget({double height = 24,double width = 24}) {
    return Image.asset(
      path(),
      height: height,
      width: width,
    );
  }
}