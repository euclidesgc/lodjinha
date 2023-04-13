import 'package:flutter/material.dart';

class Infos extends StatelessWidget {
  const Infos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Samira',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            height: 5,
          ),
        ),
        Text(
          '19 marco de 2023',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
