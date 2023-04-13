import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class ProductListLdj extends StatelessWidget {
  const ProductListLdj({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: const [
          ImageProdLdj(
            imgWidth: 200,
            imgUrl: 'assets/images/tag.png',
          ),
          ColumnNameProd(
            nameProd: 'Nome do Produto',
            sizeNameProd: 20,
            price: 500.00,
            offer: false,
          ),
        ],
      ),
    );
  }
}
