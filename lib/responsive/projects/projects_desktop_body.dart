import 'package:flutter/material.dart';
import 'package:portfolio/widgets/project_card.dart';

class ProjectsDesktopBody extends StatelessWidget {
  const ProjectsDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProjectCard(
                title: 'Engineer Project – Flutter App',
                role: 'UI/UX Designer & Flutter Developer',
                description:
                    'Mobilna aplikacja stworzona na projekt inżynierski. '
                    'Projekt UI wykonany w Figmie, a implementacja we Flutterze.',
                technologies: ['Flutter', 'Figma', 'Dart'],
                figmaLink:
                    'https://www.figma.com/design/VNoaVl3nQGV9HlRaenrDcE/Pet-Tracker-App?node-id=0-1&t=zNDjpeUgbHdpyD3Z-0',
                imagePaths: [
                  'assets/images/pet_tracker/screenshot_1.png',
                  'assets/images/pet_tracker/screenshot_2.png',
                ],
              ),
              ProjectCard(
                title: 'Coffee Website – UI Design',
                role: 'UI/UX Designer',
                description:
                    'Nowoczesny projekt strony internetowej dla marki kawy. '
                    'Responsywne widoki, czysty design, detale UX.',
                technologies: ['Figma'],
                figmaLink:
                    'https://www.figma.com/design/kNo7ELm1jYPieQkpFDPSFd/Strona-o-kawie?t=eBVpOWwHbMRx5Hfp-0',
                imagePaths: [
                  'assets/images/coffee_website/chemex.png',
                  'assets/images/coffee_website/typica.png',
                  'assets/images/coffee_website/opinion_form.png',
                  'assets/images/coffee_website/main_page.png',
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
