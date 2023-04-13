import 'package:flutter/material.dart';
import 'package:lodjinha/src/widgets/widgets.dart';

class BottomNavBarTeste extends StatefulWidget {
  final BottomControllerTeste controller;
  const BottomNavBarTeste({super.key, required this.controller});

  @override
  State<BottomNavBarTeste> createState() => _BottomNavBarTesteState();
}

class _BottomNavBarTesteState extends State<BottomNavBarTeste> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.0,
      child: BottomNavigationBar(
        currentIndex: widget.controller.selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.discount_outlined),
            label: 'Sobre',
          ),
        ],
        onTap: (index) {
          widget.controller.selectedIndex = index;
          Navigator.push<void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) =>
                  widget.controller.widgetOptions[index],
            ),
          );
        },
      ),
    );
  }
}
