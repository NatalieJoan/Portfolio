import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CertificatePdf extends StatelessWidget {
  final String url;
  final String title;

  const CertificatePdf({
    super.key, 
    required this.url, 
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        final Uri url = Uri.parse(this.url);
        if (await canLaunchUrl(url)) {
          await launchUrl(url, mode: LaunchMode.externalApplication);
        } else {
          throw 'Could not launch $url';
        }
      }, 
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}