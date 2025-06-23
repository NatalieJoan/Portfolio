import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IconButtonWidget extends StatelessWidget {
  final String icon;
  final String url;

  const IconButtonWidget({
    super.key, 
    required this.icon, 
    required this.url
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final uri = Uri.parse(url);
          if (await canLaunchUrl(uri)) {
            await launchUrl(uri, mode: LaunchMode.externalApplication);
            } else {
              throw 'Could not launch app';
            }
      },
      icon: Image.asset(
        icon,
        width: MediaQuery.of(context).size.width * 0.05,
        height: MediaQuery.of(context).size.height * 0.05),
    );
  }
}