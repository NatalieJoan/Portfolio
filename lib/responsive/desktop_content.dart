import 'package:flutter/material.dart';
import 'package:portfolio/styles/gradient_layout.dart';
import 'package:portfolio/widgets/app_bar_widget.dart';
import 'package:portfolio/widgets/footer_widget.dart';
import 'package:portfolio/widgets/menu_nawigation.dart';

class DesktopContent extends StatelessWidget {
  final Widget content;
  final String appBarText;

  const DesktopContent({
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 144.0, vertical: 24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 220, child: MenuNawigation()),
              const SizedBox(width: 24),
              Expanded(
                child: SingleChildScrollView(
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 1152),
                      child: content,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: FooterWidget(),
      ),
    );
  }
}
