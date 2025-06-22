import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_icons_and_images.dart';
import 'package:portfolio/styles/app_links.dart';
import 'package:portfolio/widgets/form_field_widget.dart';
import 'package:portfolio/widgets/social_media_widget.dart';

class ContactDesktopBody extends StatelessWidget {
  const ContactDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40),
        width: double.infinity,
        constraints: const BoxConstraints(maxWidth: 1200),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.purple,
          ),
        ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialMediaWidget(
                label: 'Linkedin',
                url: ContactLinks.linkedinLink,
                iconPath: ContactIcons.linkedinIcon,
                iconPathHovered: ContactIcons.linkedinIconHovered,
              ),
              SizedBox(width: 24),
              SocialMediaWidget(
                label: 'Github',
                url: ContactLinks.githubLink,
                iconPath: ContactIcons.githubIcon,
                iconPathHovered: ContactIcons.githubIconHovered,
              ),
              SizedBox(width: 24),
              SocialMediaWidget(
                label: 'Gitlab',
                url: ContactLinks.gitlabLink,
                iconPath: ContactIcons.gitlabIcon,
                iconPathHovered: ContactIcons.gitlabIconHovered,
              ),
            ],
          ),
          FormFieldWidget(),
        ],
      ),
    );
  }
}
