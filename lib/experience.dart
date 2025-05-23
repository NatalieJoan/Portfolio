import 'package:flutter/material.dart';
import 'package:portfolio/styles/gradient_layout.dart';
import 'package:portfolio/styles/responsive_content.dart';
import 'package:portfolio/widgets/app_bar_widget.dart';
import 'package:portfolio/widgets/menu_nawigation.dart';
import 'package:portfolio/widgets/skill_card_widget%20.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientLayout(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarWidget(title: 'Experience'),
        body: ResponsiveContent(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            MenuNawigation(),
                          SingleChildScrollView(
                child: SizedBox(
                child: Row(
                  children: [
                    SkillCardWidget(
                      iconPath: 'assets/icons/experience/Web_design.png',
                      text: 'Figma\nFlutter',
                    ),
                      SkillCardWidget(
                      iconPath: 'assets/icons/experience/Experience_black.png',
                      text: 'PHP\nLaravel',
                    ),
                    SkillCardWidget(
                      iconPath: 'assets/icons/experience/Database.png',
                      text: 'PostgreSQL\nMySQL',
                    ),
                    SkillCardWidget(
                      iconPath: 'assets/icons/experience/Technical_gears.png',
                      text: 'Jira\nDBeaver',
                    ),
                  ],
                ),
              ),
              ),
          ],
          )
        ),
      ),
    );
  }
}