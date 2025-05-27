import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black87,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.copyright_outlined, color: Colors.white),
          SizedBox(width: 12),
          const Text(
            '2025 Natalia Helak', 
            style: TextStyle(color: Colors.white, fontSize: 16)
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  'https://www.linkedin.com/';
                }, 
                icon: Image.asset(
                  'assets/icons/contact/Linkedin_white.png', 
                  width: MediaQuery.of(context).size.width * 0.06,
                  height: MediaQuery.of(context).size.height * 0.06),
              ),
              IconButton(
                onPressed: () {
                  'https://www.linkedin.com/';
                }, 
                icon: Image.asset(
                  'assets/icons/contact/Github_white.png',
                  width: MediaQuery.of(context).size.width * 0.06,
                  height: MediaQuery.of(context).size.height * 0.06),
              ),
              IconButton(
                onPressed: () {
                  'https://www.linkedin.com/';
                }, 
                icon: Image.asset(
                  'assets/icons/contact/Gitlab_white.png',
                  width: MediaQuery.of(context).size.width * 0.06,
                  height: MediaQuery.of(context).size.height * 0.06),
              ),
            ],
          ),
        ],
      ),
    );
  }
}