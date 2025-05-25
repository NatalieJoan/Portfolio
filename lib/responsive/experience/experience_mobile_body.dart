import 'package:flutter/material.dart';
import 'package:portfolio/styles/gradient_layout.dart';

class ExperienceMobileBody extends StatelessWidget {
  const ExperienceMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientLayout(
      child: Scaffold(
        appBar: AppBar(title: const Text('Experience')
        ),
      ),
    );
  }
}