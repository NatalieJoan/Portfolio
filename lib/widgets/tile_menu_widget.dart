import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_colors.dart';

class TileMenuWidget extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isSelected;

  const TileMenuWidget({
    required this.label,
    required this.onPressed,
    this.isSelected = false,
    super.key
  });

  @override
  State<TileMenuWidget> createState() => _TileMenuWidgetState();
}

class _TileMenuWidgetState extends State<TileMenuWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(horizontal: 2),
        margin: const EdgeInsets.symmetric(vertical: 4),
        width: 172,
        decoration: BoxDecoration(
          gradient: widget.isSelected 
            ? AppColors.purpleGradient
            : isHovered && !widget.isSelected
              ? AppColors.yellowGradient
              : widget.isSelected
                ? AppColors.purpleGradient
                : null,
          borderRadius: BorderRadius.circular(10),
          border: !(widget.isSelected || isHovered) 
            ? Border.all(color: Colors.black)
            : Border.all(color: Colors.white),
        ),
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            widget.label.toUpperCase(), 
            style: TextStyle(
              fontSize: 14,
              color: !(widget.isSelected || isHovered) ? Colors.black : Colors.white
            ),
          ),
        ),
      ),
    );
  }
}