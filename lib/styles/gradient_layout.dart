import 'package:flutter/material.dart';

class GradientLayout extends StatelessWidget {
  final Widget child;

  const GradientLayout({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Color.fromARGB(255, 221, 185, 155),
              Color.fromARGB(255, 218, 215, 237),
              Color.fromARGB(255, 165, 144, 230),
            ],
            stops: [0.0, 0.5, 1.0],
          ),
        ),
        child: SafeArea(child: child),
      ),
    );
  }
}
