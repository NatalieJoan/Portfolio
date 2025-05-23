import 'package:flutter/material.dart';
import 'package:portfolio/styles/gradient_layout.dart';
import 'package:portfolio/styles/responsive_content.dart';
import 'package:portfolio/widgets/app_bar_widget.dart';
import 'package:portfolio/widgets/info_card_widget.dart';
import 'package:portfolio/widgets/menu_nawigation.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientLayout(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarWidget(title: 'About'),
        body: ResponsiveContent(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MenuNawigation(),
              SingleChildScrollView(
                child: SizedBox(
                child: Column(
                  children: [
                    InfoCardWidget(
                      iconPath: 'assets/icons/about/University.png',
                      text: 'Collegium da Vinci in Poznan \nA graduate with an engineering degree',
                    ),
                      InfoCardWidget(
                      iconPath: 'assets/icons/about/Work.png',
                      text: 'Merito Higher Education Development Center\nCurrently PHP Developer in the education industry',
                    ),
                    InfoCardWidget(
                      iconPath: 'assets/icons/about/Design.png',
                      text: 'Interested in UX/UI design and mobile front-end',
                    ),
                    InfoCardWidget(
                      iconPath: 'assets/icons/about/Art.png',
                      text: 'Painter on canvas and woods',
                    ),
                    InfoCardWidget(
                      iconPath: 'assets/icons/about/Pets.png',
                      text: 'Cats and dogs lover',
                    ),
                  ],
                ),
              ),
              ),
            ],
          ),
        ),  
      ),
    );
  }
}