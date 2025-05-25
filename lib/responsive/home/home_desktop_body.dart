import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/styles/gradient_layout.dart';
import 'package:portfolio/widgets/tile_widget.dart';

class HomeDesktopBody extends StatelessWidget {
  const HomeDesktopBody({super.key});

  @override
   Widget build(BuildContext context) {
    final tiles = [
      TileWidget(label: 'About', iconPath: 'assets/icons/home/About.png', onPressed: () => context.go('/about')),
      TileWidget(label: 'Projects', iconPath: 'assets/icons/home/Projects.png', onPressed: () => context.go('/projects')),
      TileWidget(label: 'Experience', iconPath: 'assets/icons/home/Experience.png', onPressed: () => context.go('/experience')),
      TileWidget(label: 'Contact', iconPath: 'assets/icons/home/Contact.png', onPressed: () => context.go('/contact')),
    ];
    return GradientLayout(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "I'm Natalia Helak".toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, letterSpacing: 2),
              ),
              Text(
                'PHP Developer | PostgreSQL | UI/UX Designer',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, letterSpacing: 2.5),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 4,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  padding: const EdgeInsets.all(16.0),
                  children: tiles,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}