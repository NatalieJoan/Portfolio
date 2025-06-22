import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_icons_and_images.dart';
import 'package:portfolio/styles/app_links.dart';
import 'package:portfolio/widgets/form_field_widget.dart';
import 'package:portfolio/widgets/social_media_widget.dart';

class ContactDesktopBody extends StatelessWidget {
  const ContactDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
