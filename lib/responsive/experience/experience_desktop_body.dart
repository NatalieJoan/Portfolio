import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_icons_and_images.dart';
import 'package:portfolio/styles/app_texts.dart';
import 'package:portfolio/widgets/experience_timeline.dart';
import 'package:portfolio/widgets/skill_card_widget.dart';

class ExperienceDesktopBody extends StatelessWidget {
  const ExperienceDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 600, height: 300, child: ExperienceTimeline()),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SkillCardWidget(
              iconPath: SkillIcons.webDesignIcon,
              text: SkillTechnology.webDesign,
              isUp: true,
            ),
            SkillCardWidget(
              iconPath: SkillIcons.experienceIcon,
              text: SkillTechnology.experience,
              isUp: false,
            ),
            SkillCardWidget(
              iconPath: SkillIcons.databaseIcon,
              text: SkillTechnology.database,
              isUp: true,
            ),
            SkillCardWidget(
              iconPath: SkillIcons.technicalGearsIcon,
              text: SkillTechnology.technicalGears,
              isUp: false,
            ),
          ],
        ),
      ],
    );
  }
}
