import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../core/theme/app_color.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.navyBlue,
        child: Column(
          children: [
            Stack(
              children: [
                const DrawerHeader(
                  child: Center(
                    child: Text(
                      "Menu",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                      ); // Close the drawer after navigation
                    },
                    icon: Icon(Icons.close, color: Colors.white),
                  ),
                ),
              ],
            ),
            _drawerItem(context, "Home", "/"),
            _drawerItem(context, "About", "/about"),
            _drawerItem(context, "Gallery", "/gallery"),
            _drawerItem(context, "Contact", "/contact"),
          ],
        ),
      ),
    );
  }

  Widget _drawerItem(BuildContext context, String title, String route) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
      onTap: () {
        context.go(route);
        Navigator.pop(context); // Close the drawer after navigation
      },
    );
  }
}
