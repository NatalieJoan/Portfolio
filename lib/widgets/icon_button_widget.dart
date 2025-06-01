import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final String icon;
  final String onPressed;

  const IconButtonWidget({
    super.key, 
    required this.icon, 
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        onPressed;
      }, 
      icon: Image.asset(
        icon,
        width: MediaQuery.of(context).size.width * 0.05,
        height: MediaQuery.of(context).size.height * 0.05),
    );
  }
}