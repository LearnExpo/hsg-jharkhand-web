import 'package:flutter/material.dart';
import 'package:hsg_fronend/core/theme/app_color.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.navyBlue,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Bharat Scouts and Guides, Jharkhand",
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            "© 2026 All Rights Reserved | Designed with Flutter",
            style: TextStyle(color: Colors.white70, fontSize: 14),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _footerIcon(Icons.facebook),
              _footerIcon(Icons.email),
              _footerIcon(Icons.public),
            ],
          ),
        ],
      ),
    );
  }

  Widget _footerIcon(IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Icon(icon, color: AppColors.saffron, size: 28),
    );
  }
}