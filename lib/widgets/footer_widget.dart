import 'package:flutter/material.dart';
import 'package:portfolio/widgets/icon_button_widget.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black87,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0)),
              Icon(Icons.copyright_outlined, color: Colors.white),
              SizedBox(width: 12.0),
              const Text(
                '2025 Natalia Helak', 
                style: TextStyle(color: Colors.white, fontSize: 16.0)
              ),
            ],
          ),
          Row(
            children: [
              Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0)),
              IconButtonWidget(icon: 'assets/icons/contact/Linkedin_white.png', onPressed: 'https://www.linkedin.com/'),
              IconButtonWidget(icon: 'assets/icons/contact/Github_white.png', onPressed: 'https://www.linkedin.com/'),
              IconButtonWidget(icon: 'assets/icons/contact/Gitlab_white.png', onPressed: 'https://www.linkedin.com/'),
            ],
          ),
        ],
      ),
    );
  }
}