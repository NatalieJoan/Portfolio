import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_colors.dart';

class TileWidget extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  final String iconPath;

  const TileWidget({
    super.key,
    required this.label,
    required this.onPressed,
    required this.iconPath
    });

    @override
    State<TileWidget> createState() => _TileWidgetState();
}

class _TileWidgetState extends State<TileWidget> {
  bool isHovered = false;
  
  Gradient get currentGradient => isHovered
    ? AppColors.yellowGradient
    : AppColors.purpleGradient;
  
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: 368,
          height: 180,
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.white),
            gradient: currentGradient,
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.iconPath,
                width: 80,
                height: 80,
              ),
              SizedBox(height: 14),
              Text(
                widget.label.toUpperCase(),
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}