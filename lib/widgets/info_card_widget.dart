import 'package:flutter/material.dart';

class InfoCardWidget extends StatefulWidget {
  final String iconPath;
  final String text;

  const InfoCardWidget({
    super.key,
    required this.iconPath,
    required this.text
  });

  @override
  State<InfoCardWidget> createState() => _InfoCardWidgetState();
}

class _InfoCardWidgetState extends State<InfoCardWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: Matrix4.translationValues(isHovered? -20.0 : 0.0, 0.0, 0.0),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: isHovered ? Color(0xFF8231B2) : Colors.black12,
              blurRadius: 15,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.iconPath,
              width: 80,
              height: 80,
            ),
            SizedBox(width: 14),
            Text(
              widget.text,
              style: TextStyle(fontSize: 20, color: Colors.black87, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}