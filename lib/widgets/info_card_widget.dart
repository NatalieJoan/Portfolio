import 'package:flutter/material.dart';

class InfoCardWidget extends StatefulWidget {
  final String iconPath;
  final String text;
  final bool isLeftSide;

  const InfoCardWidget({
    super.key,
    required this.iconPath,
    required this.text,
    required this.isLeftSide,
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
        transform: Matrix4.translationValues(isHovered ? (widget.isLeftSide ? 20.0 : -20.0) : 0.0, 0.0, 0.0),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        margin: const EdgeInsets.symmetric(vertical: 20),
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
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              widget.iconPath,
              width: MediaQuery.of(context).size.width * 0.08,
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            SizedBox(width: 10),
            Text(
              widget.text,
              style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}