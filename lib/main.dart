import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lodjinha/src/about/about_page.dart';
import 'package:lodjinha/src/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      scrollBehavior: AppScrollBehavior(),
      title: 'A Lojinha estudo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
          displayMedium: GoogleFonts.satisfy(
            color: const Color.fromARGB(255, 122, 122, 122),
            textStyle: textTheme.displayMedium,
            fontSize: 56,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      //initialRoute: '/',
      routes: {
        '/home': (context) => const HomePage(),
        '/sobre': (context) => const AboutPage(),
      },
      home: const HomePage(),
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
