import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarLdj extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? centerTitle;
  final Color? backgroundColor;
  final bool styledTitle;

  const AppBarLdj({
    super.key,
    required this.title,
    this.centerTitle = false,
    this.backgroundColor = const Color(0xFF442896),
    this.styledTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
      titleTextStyle: styledTitle
          ? GoogleFonts.satisfy(
              color: const Color(0xFFFDF2D2),
              fontSize: 32,
              fontWeight: FontWeight.w500,
            )
          : GoogleFonts.lato(
              color: const Color.fromARGB(255, 212, 169, 158),
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

//title: const Text(
      //     'a Lodjinha',
      //     style: TextStyle(
      //       color: Color.fromARGB(255, 253, 242, 210),
      //       fontSize: 32,
      //       fontWeight: FontWeight.w500,
      //     ),
      //   ),
      //   centerTitle: true,
      //   titleTextStyle: GoogleFonts.satisfy(),