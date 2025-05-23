import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_colors.dart';

class TileWidget extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  final String iconPath;
  final TileSizeType sizeType;

  const TileWidget({
    super.key,
    required this.label,
    required this.onPressed,
    required this.iconPath,
    this.sizeType = TileSizeType.medium,
    });

    @override
    State<TileWidget> createState() => _TileWidgetState();
}

enum TileSizeType { small, medium, large }

class _TileWidgetState extends State<TileWidget> {
  bool isHovered = false;
  
  Gradient get currentGradient => isHovered
    ? AppColors.yellowGradient
    : AppColors.purpleGradient;
  
  @override
  Widget build(BuildContext context) {
    double widthFactor;
    double heightFactor;

    switch (widget.sizeType) {
      case TileSizeType.large:
        widthFactor = 0.9;
        heightFactor = 0.25;
        break;
      case TileSizeType.medium:
        widthFactor = 0.4;
        heightFactor = 0.22;
        break;
      case TileSizeType.small:
        widthFactor = 0.25;
        heightFactor = 0.25;
        break;
    }

    double width = MediaQuery.of(context).size.width * widthFactor;
    double height = MediaQuery.of(context).size.height * heightFactor;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: width,
          height: height,
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.white),
            gradient: currentGradient,
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                widget.iconPath,
                width:  MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14),
                child: Text(
                  widget.label.toUpperCase(),
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}