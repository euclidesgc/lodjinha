import 'package:flutter/material.dart';

class ImageProdLdj extends StatelessWidget {
  final String imgUrl;
  final double? imgWidth;
  const ImageProdLdj({
    super.key,
    required this.imgWidth,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgUrl,
      alignment: Alignment.center,
      width: imgWidth,
    );
  }
}
