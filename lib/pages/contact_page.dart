import 'package:flutter/material.dart';
import 'package:portfolio/responsive/contact/contact_desktop_body.dart';
import 'package:portfolio/responsive/desktop_content.dart';
import 'package:portfolio/responsive/mobile_content.dart';
import 'package:portfolio/responsive/responsive_layout.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: MobileContent(appBarText: 'Contact', content: ContactDesktopBody()),
        desktopBody: DesktopContent(appBarText: 'Contact', content: ContactDesktopBody()),
      ),
    );
  }
}