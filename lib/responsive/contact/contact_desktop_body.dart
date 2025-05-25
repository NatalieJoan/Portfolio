import 'package:flutter/material.dart';
import 'package:portfolio/styles/gradient_layout.dart';
import 'package:portfolio/widgets/form_field_widget.dart';
import 'package:portfolio/widgets/menu_nawigation.dart';
import 'package:portfolio/widgets/social_media_widget.dart';

class ContactDesktopBody extends StatelessWidget {
  const ContactDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientLayout(
      child: Scaffold(
        appBar: AppBar(title: const Text('Contact')
        ),
        body: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MenuNawigation(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SocialMediaWidget(label: 'Linkedin', url: 'https://www.linkedin.com/', iconPath: 'assets/icons/contact/Linkedin_black.png'),
                      SocialMediaWidget(label: 'Linkedin', url: 'https://www.linkedin.com/', iconPath: 'assets/icons/contact/Github_black.png'),
                      SocialMediaWidget(label: 'Linkedin', url: 'https://www.linkedin.com/', iconPath: 'assets/icons/contact/Gitlab_black.png'),
                    ],
                  ),
                  FormFieldWidget(),
                ],
              ),
            ],
          ),
      ),
    );
  }
}