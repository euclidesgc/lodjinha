import 'package:flutter/material.dart';
import 'package:lodjinha/src/widgets/product/product.dart';

class ListProductMoreSale extends StatelessWidget {
  const ListProductMoreSale({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Mais Vendidos',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              height: 5,
            ),
            textAlign: TextAlign.left,
          ),
          ProductListLdj(),
        ],
      ),
    );
  }
}
