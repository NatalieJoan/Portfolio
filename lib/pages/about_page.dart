import 'package:flutter/material.dart';
import 'package:portfolio/responsive/about/about_desktop_body.dart';
import 'package:portfolio/responsive/about/about_mobile_body.dart';
import 'package:portfolio/responsive/responsive_layout.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: AboutMobileBody(), 
        desktopBody: AboutDesktopBody()
      ),
    );
  }
}