import 'package:go_router/go_router.dart';
import 'package:portfolio/pages/about_page.dart';
import 'package:portfolio/pages/contact_page.dart';
import 'package:portfolio/pages/experience_page.dart';
import 'package:portfolio/pages/home_page.dart';
import 'package:portfolio/pages/projects_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomePage()),
    GoRoute(path: '/about', builder: (context, state) => AboutPage()),
    GoRoute(path: '/projects', builder: (context, state) => const ProjectsPage()),
    GoRoute(path: '/experience', builder: (context, state) => const ExperiencePage()),
    GoRoute(path: '/contact', builder: (context, state) => const ContactPage()),
  ],
);
