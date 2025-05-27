import 'package:flutter/material.dart';
import 'package:portfolio/styles/gradient_layout.dart';
import 'package:portfolio/widgets/app_bar_widget.dart';
import 'package:portfolio/widgets/footer_widget.dart';
import 'package:portfolio/widgets/form_field_widget.dart';
import 'package:portfolio/widgets/menu_nawigation.dart';
import 'package:portfolio/widgets/social_media_widget.dart';

class ContactDesktopBody extends StatelessWidget {
  const ContactDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientLayout(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarWidget(title: 'Contact'),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MenuNawigation(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SocialMediaWidget(label: 'Linkedin', url: 'https://www.linkedin.com/', iconPath: 'assets/icons/contact/Linkedin_black.png', iconPathHovered: 'assets/icons/contact/Linkedin_white.png'),
                    SizedBox(width: 24),
                    SocialMediaWidget(label: 'Linkedin', url: 'https://www.linkedin.com/', iconPath: 'assets/icons/contact/Github_black.png', iconPathHovered: 'assets/icons/contact/Github_white.png'),
                    SizedBox(width: 24),
                    SocialMediaWidget(label: 'Linkedin', url: 'https://www.linkedin.com/', iconPath: 'assets/icons/contact/Gitlab_black.png', iconPathHovered: 'assets/icons/contact/Gitlab_white.png'),
                  ],
                ),
                FormFieldWidget(),
              ],
            ),
          ],
        ),
        bottomNavigationBar: FooterWidget(),
      ),
    );
  }
}