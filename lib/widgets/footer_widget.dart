import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_icons_and_images.dart';
import 'package:portfolio/styles/app_links.dart';
import 'package:portfolio/widgets/icon_button_widget.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black87,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0)),
              Icon(Icons.copyright_outlined, color: Colors.white),
              SizedBox(width: 12.0),
              const Text(
                '2025 Natalia Helak',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ],
          ),
          Row(
            children: [
              Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0)),
              IconButtonWidget(
                icon: ContactIcons.linkedinIconHovered,
                url: ContactLinks.linkedinLink,
              ),
              IconButtonWidget(
                icon: ContactIcons.githubIconHovered,
                url: ContactLinks.githubLink,
              ),
              IconButtonWidget(
                icon: ContactIcons.gitlabIconHovered,
                url: ContactLinks.gitlabLink,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
