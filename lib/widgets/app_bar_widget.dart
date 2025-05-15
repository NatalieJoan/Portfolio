import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  final String title;

  const AppBarWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(title.toUpperCase(), style: GoogleFonts.lilitaOne(fontSize: 48)),
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () => context.go('/'), 
        icon: const Icon(Icons.arrow_back)
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}