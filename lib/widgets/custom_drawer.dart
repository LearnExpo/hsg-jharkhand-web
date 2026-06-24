import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hsg_fronend/core/services/scroll_service.dart';
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
            _drawerItem(
              context,
              "About",
              () => ScrollService.scrollTo(ScrollService.aboutKey),
            ),

            _drawerItem(
              context,
              "Activities",
              () => ScrollService.scrollTo(ScrollService.activitiesKey),
            ),

            _drawerItem(
              context,
              "Leadership",
              () => ScrollService.scrollTo(ScrollService.leadershipKey),
            ),

            _drawerItem(
              context,
              "Districts",
              () => ScrollService.scrollTo(ScrollService.districtsKey),
            ),

            _drawerItem(
              context,
              "Gallery",
              () => ScrollService.scrollTo(ScrollService.galleryKey),
            ),

            _drawerItem(
              context,
              "Notices",
              () => ScrollService.scrollTo(ScrollService.noticesKey),
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawerItem(BuildContext context, String title, VoidCallback onTap) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
      onTap: () {
        Navigator.pop(context);
        onTap();
      },
    );
  }
}
