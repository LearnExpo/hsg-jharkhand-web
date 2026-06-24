import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hsg_fronend/core/services/scroll_service.dart';
import 'package:hsg_fronend/pages/about_page.dart';
import 'package:hsg_fronend/pages/contact_page.dart';
import 'package:hsg_fronend/pages/gallery_page.dart';
import 'package:hsg_fronend/pages/home_page.dart';
import 'package:hsg_fronend/widgets/custom_drawer.dart';
import 'package:hsg_fronend/widgets/custom_nav_bar.dart';
import 'package:hsg_fronend/widgets/footer.dart';
import 'package:responsive_framework/responsive_framework.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        bool isMobile = ResponsiveBreakpoints.of(context).smallerThan(DESKTOP);
        return Scaffold(
          appBar: const CustomNavBar(),
          drawer: isMobile ? const CustomDrawer() : null,

          body: child,
          //  SingleChildScrollView(
          //   controller: ScrollService.scrollController,
          //   child: child,
          // ), // Your pages (Home, About, etc.) will be injected here
          // bottomNavigationBar: const Footer(),
        );
      },
      routes: [
        GoRoute(path: '/', builder: (context, state) => const HomePage()),
        GoRoute(path: '/about', builder: (context, state) => const AboutPage()),
        GoRoute(
          path: '/contact',
          builder: (context, state) => const ContactPage(),
        ),
        GoRoute(
          path: '/gallery',
          builder: (context, state) => const GalleryPage(),
        ),
      ],
    ),
  ],
);
