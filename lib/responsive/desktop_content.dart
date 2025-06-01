import 'package:flutter/material.dart';

class DesktopContent extends StatelessWidget {
  final Widget child;
  
  const DesktopContent({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double contentWidth = screenWidth > 1152 ? 1152 : screenWidth;

        return Center(
          child: SizedBox(
            width: contentWidth,
            child: child,
          ),
        );
      },
    );
  }
}