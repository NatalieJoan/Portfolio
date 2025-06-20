import 'package:flutter/material.dart';
import 'package:portfolio/widgets/experience_timeline.dart';
import 'package:portfolio/widgets/skill_card_widget.dart';

class ExperienceDesktopBody extends StatelessWidget {
  const ExperienceDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      alignment: WrapAlignment.center,
      children: [
        Column(
          children: [
            SizedBox(
              width: 600,
              height: 280,
              child: ExperienceTimeline(),
            ),
            SizedBox(height: 10),
            SizedBox(
              child: Row(
                children: [
                  SkillCardWidget(
                    iconPath: 'assets/icons/experience/Web_design.png',
                    text: 'Figma\nFlutter',
                    isUp: true,
                  ),
                  SkillCardWidget(
                    iconPath: 'assets/icons/experience/Experience_black.png',
                    text: 'PHP\nLaravel',
                    isUp: false,
                  ),
                  SkillCardWidget(
                    iconPath: 'assets/icons/experience/Database.png',
                    text: 'PostgreSQL\nMySQL',
                    isUp: true,
                  ),
                  SkillCardWidget(
                    iconPath: 'assets/icons/experience/Technical_gears.png',
                    text: 'Jira\nDBeaver',
                    isUp: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
