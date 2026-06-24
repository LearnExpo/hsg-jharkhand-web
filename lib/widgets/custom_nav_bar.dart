import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../core/services/scroll_service.dart';
import '../core/theme/app_color.dart';

class CustomNavBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile =
        ResponsiveBreakpoints.of(context).smallerThan(TABLET);

    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      centerTitle: false,

      leading: isMobile
          ? Builder(
              builder: (context) => IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: AppColors.navyBlue,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            )
          : null,

      title: Row(
        children: [
          Image.asset(
            "assets/images/sample.png",
            height: 45,
            width: 45,
            fit: BoxFit.cover,
          ),

          const SizedBox(width: 12),

          const Text(
            "HSG Jharkhand",
            style: TextStyle(
              color: AppColors.navyBlue,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),

      actions: isMobile
          ? []
          : [
              _navItem(
                "About",
                () => ScrollService.scrollTo(
                  ScrollService.aboutKey,
                ),
              ),

              _navItem(
                "Activities",
                () => ScrollService.scrollTo(
                  ScrollService.activitiesKey,
                ),
              ),

              _navItem(
                "Leadership",
                () => ScrollService.scrollTo(
                  ScrollService.leadershipKey,
                ),
              ),

              _navItem(
                "Districts",
                () => ScrollService.scrollTo(
                  ScrollService.districtsKey,
                ),
              ),

              _navItem(
                "Gallery",
                () => ScrollService.scrollTo(
                  ScrollService.galleryKey,
                ),
              ),

              _navItem(
                "Notices",
                () => ScrollService.scrollTo(
                  ScrollService.noticesKey,
                ),
              ),

              const SizedBox(width: 20),

              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: ElevatedButton(
                  onPressed: () {
                    ScrollService.scrollTo(
                      ScrollService.contactKey,
                    );
                  },
                  child: const Text("Join Us"),
                ),
              ),
            ],
    );
  }

  Widget _navItem(
    String title,
    VoidCallback onTap,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          title,
          style: const TextStyle(
            color: AppColors.navyBlue,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}