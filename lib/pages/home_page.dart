import 'package:flutter/material.dart';
import 'package:portfolio/responsive/home/home_desktop_body.dart';
import 'package:portfolio/responsive/home/home_mobile_body.dart';
import 'package:portfolio/responsive/responsive_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileBody: HomeMobileBody(), 
        desktopBody: HomeDesktopBody()
      ),
    );
  }
}