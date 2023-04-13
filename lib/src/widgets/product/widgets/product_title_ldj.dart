import 'package:flutter/material.dart';

class ProductTitleLdj extends StatelessWidget {
  final String nameProd;
  final double sizeNameProd;

  const ProductTitleLdj(
      {super.key, required this.nameProd, required this.sizeNameProd});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        nameProd,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: sizeNameProd,
        ),
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
