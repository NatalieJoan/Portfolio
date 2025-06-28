import 'package:flutter/material.dart';
import 'package:portfolio/responsive/desktop_content.dart';
import 'package:portfolio/responsive/experience/experience_desktop_body.dart';
import 'package:portfolio/responsive/mobile_content.dart';
import 'package:portfolio/responsive/responsive_layout.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileContent(appBarText: 'Experience', content: ExperienceDesktopBody()),
        desktopBody: DesktopContent(appBarText: 'Experience', content: ExperienceDesktopBody()),
      ),
    );
  }
}