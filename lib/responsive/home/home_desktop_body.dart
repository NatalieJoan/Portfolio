import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/styles/gradient_layout.dart';
import 'package:portfolio/widgets/footer_widget.dart';
import 'package:portfolio/widgets/tile_widget.dart';

class HomeDesktopBody extends StatelessWidget {
  const HomeDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    final tiles = [
      TileWidget(
        label: 'About',
        iconPath: 'assets/icons/home/About.png',
        onPressed: () => context.go('/about'),
      ),
      TileWidget(
        label: 'Projects',
        iconPath: 'assets/icons/home/Projects.png',
        onPressed: () => context.go('/projects'),
      ),
      TileWidget(
        label: 'Experience',
        iconPath: 'assets/icons/home/Experience.png',
        onPressed: () => context.go('/experience'),
      ),
      TileWidget(
        label: 'Contact',
        iconPath: 'assets/icons/home/Contact.png',
        onPressed: () => context.go('/contact'),
      ),
    ];

    return GradientLayout(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 24.0,
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "I'm Natalia Helak".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lilitaOne(fontSize: 52, letterSpacing: 2.0),
                  ),
                  Text(
                    'PHP Developer | PostgreSQL | UI/UX Designer',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0, letterSpacing: 2.0),
                  ),
                ],
              ),
              Expanded(
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1152), 
                    child: Wrap(
                      spacing: 40,
                      runSpacing: 40,
                      alignment: WrapAlignment.spaceAround,
                      children: tiles,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: FooterWidget(),
      ),
    );
  }
}
