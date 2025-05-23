import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/styles/gradient_layout.dart';
import 'package:portfolio/styles/responsive_content.dart';
import 'package:portfolio/widgets/tile_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientLayout(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ResponsiveContent(
          child: LayoutBuilder(
            builder: (context, constrainsts) {
              final width = constrainsts.maxWidth;

              TileSizeType tileSize;
              double spacing;
              bool useColumnLayout = false;

              if (width < 600) {
                tileSize = TileSizeType.large;
                useColumnLayout = true;
                spacing = 0;
              } else if (width < 1152) {
                tileSize = TileSizeType.medium;
                spacing = 50;
              } else {
                tileSize = TileSizeType.small;
                spacing = 200;
              }

              final tiles = [
                TileWidget(label: 'About', iconPath: 'assets/icons/home/About.png', onPressed: () => context.go('/about'), sizeType: tileSize),
                TileWidget(label: 'Projects', iconPath: 'assets/icons/home/Projects.png', onPressed: () => context.go('/projects'), sizeType: tileSize),
                TileWidget(label: 'Experience', iconPath: 'assets/icons/home/Experience.png', onPressed: () => context.go('/experience'), sizeType: tileSize),
                TileWidget(label: 'Contact', iconPath: 'assets/icons/home/Contact.png', onPressed: () => context.go('/contact'), sizeType: tileSize),
              ];

              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "I'm Natalia Helak",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lilitaOne(fontSize: 64),
                    ),
                    Text(
                      'PHP developer | PostgreSQL | UI/UX Designer',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 48),
                    useColumnLayout
                    ? Column(
                        children: tiles.map((t) => Padding(padding: const EdgeInsets.symmetric(vertical: 10), child: t)).toList(),
                      )
                    : Wrap(
                      spacing: spacing,
                      runSpacing: spacing,
                      alignment: WrapAlignment.center,
                      children: tiles,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}