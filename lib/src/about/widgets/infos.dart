import 'package:flutter/material.dart';

class Infos extends StatelessWidget {
  final String name;

  const Infos({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            height: 5,
          ),
        ),
        const Text(
          '19 marco de 2023',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
