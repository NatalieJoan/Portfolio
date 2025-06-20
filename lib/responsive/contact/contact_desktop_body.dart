import 'package:flutter/material.dart';
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
                url: 'https://www.linkedin.com/in/natalia-helak-php-developer/',
                iconPath: 'assets/icons/contact/Linkedin_black.png',
                iconPathHovered: 'assets/icons/contact/Linkedin_white.png',
              ),
              SizedBox(width: 24),
              SocialMediaWidget(
                label: 'Github',
                url: 'https://github.com/NatalieJoan/',
                iconPath: 'assets/icons/contact/Github_black.png',
                iconPathHovered: 'assets/icons/contact/Github_white.png',
              ),
              SizedBox(width: 24),
              SocialMediaWidget(
                label: 'Gitlab',
                url: 'https://www.gitlab.com/',
                iconPath: 'assets/icons/contact/Gitlab_black.png',
                iconPathHovered: 'assets/icons/contact/Gitlab_white.png',
              ),
            ],
          ),
          FormFieldWidget(),
        ],
      ),
    );
  }
}
