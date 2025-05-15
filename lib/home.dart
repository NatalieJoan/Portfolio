import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/styles/gradient_layout.dart';
import 'package:portfolio/styles/responsive_content.dart';
import 'package:portfolio/widgets/tile_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientLayout(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ResponsiveContent(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'WELCOME',
                style: GoogleFonts.lilitaOne(fontSize: 64),
                ),
              const SizedBox(height: 12),
              const Text(
                "I'm Natalie Helak\nPHP developer | PostgreSQL | UI/UX Designer",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 48),
              Expanded(
                child: Wrap(
                  spacing: 200,
                  runSpacing: 50,
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  children: [
                    TileWidget(label: 'About', onPressed: () => context.go('/about'), iconPath: 'assets/icons/home/About.png'),
                    TileWidget(label: 'Projects', onPressed: () => context.go('/projects'), iconPath: 'assets/icons/home/Projects.png'),
                    TileWidget(label: 'Experience', onPressed: () => context.go('/experience'), iconPath: 'assets/icons/home/Experience.png'),
                    TileWidget(label: 'Contact', onPressed: () => context.go('/contact'), iconPath: 'assets/icons/home/Contact.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}