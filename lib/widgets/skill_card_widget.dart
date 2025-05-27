import 'package:flutter/material.dart';

class SkillCardWidget extends StatefulWidget {
  final String iconPath;
  final String text;

  const SkillCardWidget({
    super.key,
    required this.iconPath,
    required this.text
  });

  @override
  State<SkillCardWidget> createState() => _SkillCardWidgetState();
}

class _SkillCardWidgetState extends State<SkillCardWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: Matrix4.translationValues(isHovered? 10.0 : 0.0, 0.0, 0.0),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: isHovered ? Color(0xFF8231B2) : Colors.black12,
              blurRadius: 15,
              offset: Offset(0, 0),
            ),
          ],
          
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.iconPath,
              width: MediaQuery.of(context).size.width * 0.08,
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            SizedBox(width: 14),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                widget.text,
                style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
                textAlign: TextAlign.center
              ),
            ),
          ],
        ),
      ),
    );
  }
}