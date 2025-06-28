import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_texts.dart';
import 'package:portfolio/styles/app_icons_and_images.dart';
import 'package:portfolio/widgets/info_card_widget.dart';

class AboutDesktopBody extends StatelessWidget {
  const AboutDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      alignment: WrapAlignment.start,
      children: [ 
        Column(
          children: [
            InfoCardWidget(
              iconPath: AboutIcons.universityIcon,
              text: AboutDescription.universityText, 
              isLeftSide: true,
            ),
            InfoCardWidget(
              iconPath: AboutIcons.workIcon,
              text:  AboutDescription.workText,
              isLeftSide: false,
            ),
            InfoCardWidget(
              iconPath: AboutIcons.designIcon,
              text:  AboutDescription.designText,
              isLeftSide: true,
            ),
            InfoCardWidget(
              iconPath: AboutIcons.artIcon,
              text:  AboutDescription.artText,
              isLeftSide: false,
            ),
            InfoCardWidget(
              iconPath: AboutIcons.petIcon,
              text:  AboutDescription.petText,
              isLeftSide: true,
            ),
          ],
        ),
      ],
    );
  }
}
