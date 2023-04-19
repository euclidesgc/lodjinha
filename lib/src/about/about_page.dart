import 'package:flutter/material.dart';
import 'package:lodjinha/src/about/about_controller.dart';
import 'package:lodjinha/src/about/widgets/infos.dart';
import 'package:lodjinha/src/util/my_locator.dart';

import '../widgets/widgets.dart';
import 'widgets/name_store.dart';
import 'widgets/tag.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final controller = AboutController();
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarLdj(
        title: 'Sobre',
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              const TagLdj(),
              const NameStore(),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: TextField(
                        controller: textController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Nome',
                        ),
                        onChanged: (value) {
                          controller.changeName(value);
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          controller.changeName(textController.text);
                        });
                      },
                      child: const Text('Ok'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ValueListenableBuilder(
                valueListenable: controller.nome,
                builder: (context, value, child) {
                  return Infos(
                    name: value,
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBarTeste(
        controller: MyLocator.getController(),
      ),
    );
  }
}
