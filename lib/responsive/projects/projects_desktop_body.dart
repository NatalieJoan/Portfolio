import 'package:flutter/material.dart';
import 'package:portfolio/styles/gradient_layout.dart';
import 'package:portfolio/widgets/scaffold_layout_widget.dart';

class ProjectsDesktopBody extends StatelessWidget {
  const ProjectsDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientLayout(
      child: ScaffoldLayoutWidget(title: 'Projects'),
    );
  }
}