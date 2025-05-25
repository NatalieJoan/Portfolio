import 'package:flutter/material.dart';
import 'package:portfolio/styles/gradient_layout.dart';

class ContactMobileBody extends StatelessWidget {
  const ContactMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientLayout(
      child: Scaffold(
        appBar: AppBar(title: const Text('Contact')
        ),
      ),
    );
  }
}