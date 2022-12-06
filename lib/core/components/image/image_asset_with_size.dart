import 'package:flutter/material.dart';
import 'package:flutter_meditation_app/extensions/image_path_extension.dart';

class ImageAssetWithSize extends StatelessWidget {
  final double width;
  final double height;
  final String imagePath;
  final EdgeInsets? margin;
  const ImageAssetWithSize(
      {Key? key,
      required this.width,
      required this.height,
      required this.imagePath,
      this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: height,
      child: imagePath.toImageAsset(
        width: width,
        height: height,
      ),
    );
  }
}
