import 'package:flutter/material.dart';
import 'package:portfolio/responsive/projects/projects_desktop_body.dart';
import 'package:portfolio/responsive/projects/projects_mobile_body.dart';
import 'package:portfolio/responsive/responsive_layout.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: ProjectsMobileBody(), 
        desktopBody: ProjectsDesktopBody()
      ),
    );
  }
}