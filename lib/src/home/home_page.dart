import 'package:flutter/material.dart';
import 'package:lodjinha/src/home/home_controller.dart';
import 'package:lodjinha/src/util/my_locator.dart';

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
              FutureBuilder(
                future: controller.getBanner(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      return const Center(child: Text('Erro ao carregar'));
                    }
                    return PrincipalSlider(imgList: controller.imgList);
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
              const CategoryListLdj(),
              const ListProductMoreSale(),
            ],
          )),
      bottomNavigationBar: BottomNavBarTeste(
        controller: MyLocator.getController(),
      ),
    );
  }
}
