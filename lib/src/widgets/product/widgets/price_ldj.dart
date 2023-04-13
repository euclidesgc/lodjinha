import 'package:flutter/material.dart';

class PriceLdj extends StatelessWidget {
  final double price;
  final bool offer;
  const PriceLdj({
    super.key,
    required this.price,
    required this.offer,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          pricevalue(offer, price),
        ],
      ),
    );
  }
}

pricevalue(offer, price) {
  String money = "R" r"$";
  String value = price.toString();
  String pricevalue = money + value;
  if (offer == false) {
    return Text(
      pricevalue,
      style: const TextStyle(
        color: Color.fromRGBO(37, 37, 37, 1),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      textDirection: TextDirection.ltr,
    );
  } else {
    return Text(
      pricevalue,
      style: const TextStyle(
        color: Color.fromRGBO(141, 140, 140, 1),
        fontSize: 14,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.underline,
      ),
      textDirection: TextDirection.ltr,
    );
  }
}
