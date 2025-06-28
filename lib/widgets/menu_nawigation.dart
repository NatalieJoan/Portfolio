import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/widgets/tile_menu_widget.dart';

class MenuNawigation extends StatelessWidget {
  const MenuNawigation({super.key});

  @override
  Widget build(BuildContext context) {
    final String currentLocation =
        GoRouter.of(context).routerDelegate.currentConfiguration.uri.toString();
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= 600) {
      return SizedBox(
        width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TileMenuWidget(
              label: 'About',
              isSelected: currentLocation == '/about',
              onPressed: () => context.go('/about'),
            ),
            TileMenuWidget(
              label: 'Experience',
              isSelected: currentLocation == '/experience',
              onPressed: () => context.go('/experience'),
            ),
            TileMenuWidget(
              label: 'Projects',
              isSelected: currentLocation == '/projects',
              onPressed: () => context.go('/projects'),
            ),
            TileMenuWidget(
              label: 'Contact',
              isSelected: currentLocation == '/contact',
              onPressed: () => context.go('/contact'),
            ),
          ],
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  } 
}
