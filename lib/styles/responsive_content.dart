import 'package:flutter/material.dart';

class ResponsiveContent extends StatelessWidget {
  final Widget child;
  final double maxContentWidth;
  final EdgeInsetsGeometry padding;
  
  const ResponsiveContent({
    super.key,
    required this.child,
    this.maxContentWidth = 1152,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
  });
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double contentWidth = constraints.maxWidth < maxContentWidth
          ? constraints.maxWidth
          : maxContentWidth;
        return Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: contentWidth),
            child: Padding(
              padding: padding, 
              child: child
            ),
          ),
        );
      },
    );
  }
}