import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart'; // Import this
import '../core/theme/app_color.dart';

class CustomNavBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    // THIS is how you properly check responsiveness now:
    bool isMobile = ResponsiveBreakpoints.of(context).smallerThan(DESKTOP);

    return AppBar(
      backgroundColor: AppColors.navyBlue,
      leading: DrawerButton(color: Colors.white),
      title: const Text(
        "HSG ",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      actions: isMobile
          ? []
          : [
              _navItem(context, "Home", "/"),
              _navItem(context, "About", "/about"),
              _navItem(context, "Gallery", "/gallery"),
              _navItem(context, "Contact", "/contact"),
              const SizedBox(width: 20),
            ],
    );
  }

  Widget _navItem(BuildContext context, String title, String route) {
    return InkWell(
      onTap: () => context.go(route),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
