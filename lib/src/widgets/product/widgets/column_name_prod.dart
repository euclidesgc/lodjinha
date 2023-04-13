import 'package:flutter/material.dart';

import 'widgets.dart';

class ColumnNameProd extends StatelessWidget {
  final String nameProd;
  final double sizeNameProd;
  final double price;
  final bool offer;
  const ColumnNameProd({
    super.key,
    required this.nameProd,
    required this.sizeNameProd,
    required this.price,
    required this.offer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        ProductTitleLdj(
          nameProd: 'Nome do Produto',
          sizeNameProd: 20,
        ),
        SizedBox(height: 10),
        PriceLdj(
          price: 500.00,
          offer: false,
        ),
      ],
    );
  }
}
