import 'package:flutter/material.dart';

class PriceDiscuntLdj extends StatelessWidget {
  final double price;
  final double discunt;
  final double? discuntValue;
  final DateTime? datastart;
  final DateTime? datafinal;
  const PriceDiscuntLdj({
    super.key,
    required this.price,
    required this.discunt,
    this.datastart,
    this.datafinal,
    this.discuntValue,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          calculeDiscunt(price, discunt, datastart, datafinal),
        ],
      ),
    );
  }
}

calculeDiscunt(price, discunt, datastart, datafinal) {
  if (datastart && datafinal) {
    var discuntValue = (price * discunt) / 100;
    return discuntValue;
  }
}
