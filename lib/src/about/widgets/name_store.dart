import 'package:flutter/material.dart';

class NameStore extends StatelessWidget {
  const NameStore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'a Lodjinha',
      style: Theme.of(context).textTheme.displayMedium,
      textDirection: TextDirection.ltr,
    );
  }
}
