import 'package:flutter/material.dart';
import 'package:portfolio/styles/app_colors.dart';

class SubmitButtonWidget extends StatefulWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isSelected;

  const SubmitButtonWidget({
    required this.label,
    required this.onPressed,
    this.isSelected = false,
    super.key,
  });

  @override
  State<SubmitButtonWidget> createState() => _SubmitButtonWidgetState();
}

class _SubmitButtonWidgetState extends State<SubmitButtonWidget> {
  bool isHovered = false;

  Gradient get currentGradient =>
      isHovered ? AppColors.yellowGradient : AppColors.purpleGradient;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(horizontal: 2),
        margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
        width: 172,
        decoration: BoxDecoration(
          gradient: currentGradient,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 2.0, color: Colors.white),
        ),
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                widget.label.toUpperCase(),
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              Icon(Icons.send_rounded, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
