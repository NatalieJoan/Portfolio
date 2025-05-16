import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaWidget extends StatefulWidget {
  final String label;
  final String url;
  final String iconPath;

  const SocialMediaWidget({
    super.key, 
    required this.label, 
    required this.url,
    required this.iconPath
  });

  @override
  State<SocialMediaWidget> createState() => _SocialMediaWidgetState();
}

class _SocialMediaWidgetState extends State<SocialMediaWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false), 
      child: GestureDetector (
        onTap: () async {
          final uri = Uri.parse(widget.url);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri, mode: LaunchMode.externalApplication);
            } else {
              throw 'Could not launch app';
            }
          },
        child: AnimatedContainer(
          padding: const EdgeInsets.all(12),
          duration: Duration(microseconds: 300),
          child: Column(
            children: [
              Image.asset(widget.iconPath, width: 40, height: 40),
              SizedBox(height: 12),
              Text(widget.label, style: TextStyle(color: isHovered ? Colors.white : Colors.black87))
            ]
          ),
        ),
      ),
    );
  }
}