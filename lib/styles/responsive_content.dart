import 'package:flutter/material.dart';

enum ScreenSizeType { small, medium, large }

class ResponsiveContent extends StatelessWidget {
  final Widget child;
  final double maxContentWidth;
  final EdgeInsetsGeometry padding;
  final void Function(ScreenSizeType sizeType)? onSizeChanged; 
  
  const ResponsiveContent({
    super.key,
    required this.child,
    this.maxContentWidth = 900,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
    this.onSizeChanged,
  });
  
  ScreenSizeType _getSizeType(double width) {
    if (width < 600) return ScreenSizeType.small;
    if (width < 1152) return ScreenSizeType.medium;
    return ScreenSizeType.large;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // double contentWidth = constraints.maxWidth < maxContentWidth
        //   ? constraints.maxWidth
        //   : maxContentWidth;
        final width = constraints.maxWidth;
        final sizeType = _getSizeType(width);
        if (onSizeChanged != null) {
          onSizeChanged!(sizeType);
        }
        final contentWidth = width < maxContentWidth ? width : maxContentWidth;
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