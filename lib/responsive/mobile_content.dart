import 'package:flutter/material.dart';
import 'package:portfolio/styles/gradient_layout.dart';
import 'package:portfolio/widgets/app_bar_widget.dart';
import 'package:portfolio/widgets/footer_widget.dart';

class MobileContent extends StatelessWidget {
  final Widget content;
  final String appBarText;

  const MobileContent({
    super.key,
    required this.content,
    required this.appBarText,
  });

  @override
  Widget build(BuildContext context) {
    return GradientLayout(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarWidget(title: appBarText),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: content,
        ),
        bottomNavigationBar: const FooterWidget(),
      ),
    );
  }
}
