import 'package:flutter/material.dart';
import 'package:lodjinha/src/util/locator.dart';

import '../widgets/widgets.dart';
import 'widgets/infos.dart';
import 'widgets/name_store.dart';
import 'widgets/tag.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarLdj(
        title: 'Sobre',
        centerTitle: true,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(height: 10),
            TagLdj(),
            NameStore(),
            SizedBox(height: 100),
            Infos(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarTeste(
        controller: Locator.getController(),
      ),
    );
  }
}
