import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_icons_and_images.dart';
import 'package:portfolio/styles/app_texts.dart';
import 'package:portfolio/widgets/info_card_widget.dart';

class AboutMobileBody extends StatelessWidget {
  const AboutMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InfoCardWidget(
          iconPath: AboutIcons.universityIcon,
          text: AboutDescription.universityText,
          isLeftSide: true, // albo ignoruj w wersji mobilnej
        ),
        SizedBox(height: 16),
        InfoCardWidget(
          iconPath: AboutIcons.workIcon,
          text: AboutDescription.workText,
          isLeftSide: false,
        ),
        SizedBox(height: 16),
        InfoCardWidget(
          iconPath: AboutIcons.designIcon,
          text: AboutDescription.designText,
          isLeftSide: true,
        ),
        SizedBox(height: 16),
        InfoCardWidget(
          iconPath: AboutIcons.artIcon,
          text: AboutDescription.artText,
          isLeftSide: false,
        ),
        SizedBox(height: 16),
        InfoCardWidget(
          iconPath: AboutIcons.petIcon,
          text: AboutDescription.petText,
          isLeftSide: false,
        ),
      ],
    );
  }
}
