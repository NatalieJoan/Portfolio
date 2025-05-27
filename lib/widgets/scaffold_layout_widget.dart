import 'package:flutter/material.dart';
import 'package:portfolio/widgets/app_bar_widget.dart';
import 'package:portfolio/widgets/menu_nawigation.dart';

class ScaffoldLayoutWidget extends StatelessWidget {
  final String title;

  const ScaffoldLayoutWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBarWidget(title: title),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MenuNawigation()
        ],
      ),
    );
  }
}