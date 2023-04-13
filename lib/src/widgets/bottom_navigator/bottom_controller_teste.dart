import 'package:flutter/material.dart';
import 'package:lodjinha/src/about/about_page.dart';
import 'package:lodjinha/src/home/home_page.dart';

class BottomControllerTeste {
  int selectedIndex = 0;
  final List<Widget> widgetOptions = [
    const HomePage(),
    const AboutPage(),
  ];

  @override
  bool operator ==(covariant BottomControllerTeste other) {
    if (identical(this, other)) return true;
    return other.selectedIndex == selectedIndex;
  }

  @override
  int get hashCode => selectedIndex.hashCode;
}
