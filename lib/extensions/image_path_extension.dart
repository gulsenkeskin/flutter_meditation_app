import 'package:flutter/material.dart';


extension ImagePathsExtension on String{
  String path() {
    return 'assets/images/$this.png';
  }

  Widget toImageAsset({double height = 24,double width = 24}) {
    return Image.asset(
      path(),
      height: height,
      width: width,
    );
  }

  AssetImage assetImage() {
    return AssetImage(
      path(),
    );
  }
}