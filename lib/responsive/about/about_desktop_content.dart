import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_text.dart';
import 'package:portfolio/styles/icons.dart';
import 'package:portfolio/widgets/info_card_widget.dart';

class AboutDesktopContent extends StatelessWidget {
  const AboutDesktopContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      alignment: WrapAlignment.start,
      children: [ 
        Column(
          children: [
            InfoCardWidget(
              iconPath: AppIcons.universityIcon,
              text: AppText.universityText, 
              isLeftSide: true,
            ),
            InfoCardWidget(
              iconPath: AppIcons.workIcon,
              text:  AppText.workText,
              isLeftSide: false,
            ),
            InfoCardWidget(
              iconPath: AppIcons.designIcon,
              text:  AppText.designText,
              isLeftSide: true,
            ),
            InfoCardWidget(
              iconPath: AppIcons.artIcon,
              text:  AppText.artText,
              isLeftSide: false,
            ),
            InfoCardWidget(
              iconPath: AppIcons.petIcon,
              text:  AppText.petText,
              isLeftSide: true,
            ),
          ],
        ),
      ],
    );
  }
}
