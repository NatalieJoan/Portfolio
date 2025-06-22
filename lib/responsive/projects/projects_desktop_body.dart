import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_links.dart';
import 'package:portfolio/styles/app_texts.dart';
import 'package:portfolio/styles/app_icons_and_images.dart';
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
                title: ProjectTitle.engineeringProjectTitle,
                role: ProjectRole.engineeringProjectRole,
                description: ProjectDescription.engineeringProjectDescription,
                technologies: ProjectTechnologies.engineeringProjectTechnologies,
                figmaLink: ProjectLinks.engineeringFigmaLink,
                imagePaths: ProjectImages.engineeringProjectImages
              ),
              ProjectCard(
                title: ProjectTitle.coffeeWebsiteTitle,
                role: ProjectRole.coffeeWebsiteRole,
                description: ProjectDescription.coffeeWebsiteDescription,
                technologies: ProjectTechnologies.coffeeWebsiteTechnologies,
                figmaLink: ProjectLinks.coffeeWebsiteFigmaLink,
                imagePaths: ProjectImages.coffeeWebsiteImages,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
