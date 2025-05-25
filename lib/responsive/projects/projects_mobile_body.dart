import 'package:flutter/material.dart';
import 'package:portfolio/styles/gradient_layout.dart';

class ProjectsMobileBody extends StatelessWidget {
  const ProjectsMobileBody({super.key});

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