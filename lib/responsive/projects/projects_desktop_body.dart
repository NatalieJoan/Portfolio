import 'package:flutter/material.dart';
import 'package:portfolio/styles/gradient_layout.dart';

class ProjectsDesktopBody extends StatelessWidget {
  const ProjectsDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientLayout(
      child: Scaffold(
        appBar: AppBar(title: const Text('Projects')
        ),
      ),
    );
  }
}