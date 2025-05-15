import 'package:go_router/go_router.dart';
import 'package:portfolio/about.dart';
import 'package:portfolio/contact.dart';
import 'package:portfolio/experience.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/projects.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const Home()),
    GoRoute(path: '/about', builder: (context, state) => About()),
    GoRoute(path: '/projects', builder: (context, state) => const Projects()),
    GoRoute(path: '/experience', builder: (context, state) => const Experience()),
    GoRoute(path: '/contact', builder: (context, state) => const Contact()),
  ],
);
