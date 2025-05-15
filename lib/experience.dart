import 'package:flutter/material.dart';
import 'package:portfolio/styles/gradient_layout.dart';
import 'package:portfolio/styles/responsive_content.dart';
import 'package:portfolio/widgets/app_bar_widget.dart';
import 'package:portfolio/widgets/menu_nawigation.dart';

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
          ],
          )

        ),
      ),
    );
  }
}