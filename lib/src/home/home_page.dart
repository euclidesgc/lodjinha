import 'package:flutter/material.dart';
import 'package:lodjinha/src/home/home_controller.dart';
import 'package:lodjinha/src/util/locator.dart';

import '../widgets/widgets.dart';
import 'widgets/widgets_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getBanner();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarLdj(
        title: 'Lodjinha',
        centerTitle: true,
        styledTitle: true,
      ),
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              PrincipalSlider(imgList: controller.imgList),
              const CategoryListLdj(),
              const ListProductMoreSale(),
            ],
          )),
      bottomNavigationBar: BottomNavBarTeste(
        controller: Locator.getController(),
      ),
    );
  }
}
