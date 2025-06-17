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
        appBar: AppBarWidget(
          title: appBarText
        ),
        body: Column(
          children: [
            Padding(padding: const EdgeInsets.symmetric(horizontal: 144.0, vertical: 24),
              child: Row(
                children: [
                  SizedBox(
                    width: 200,
                    height: 400,
                    child: MenuNawigation(),
                  ),
                  Expanded(
                    child: Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 1152),
                        child: content,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: FooterWidget(),
      ),
    );
  }
}