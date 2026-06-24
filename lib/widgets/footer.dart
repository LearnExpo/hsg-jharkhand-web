import 'package:flutter/material.dart';
import 'package:hsg_fronend/core/services/scroll_service.dart';
import '../core/theme/app_color.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;

    return Container(
      key: ScrollService.contactKey,
      width: double.infinity,
      color: const Color(0xFF001B33),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 60),
      child: Column(
        children: [
          isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _footerContent(),
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _footerContent(),
                ),

          const SizedBox(height: 40),

          const Divider(color: Colors.white24),

          const SizedBox(height: 20),

          const Text(
            "© 2026 Hindustan Scouts & Guides Jharkhand. All Rights Reserved.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }

  List<Widget> _footerContent() {
    return [
      SizedBox(
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "HSG Jharkhand",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Empowering youth through leadership, discipline, service and community engagement.",
              style: TextStyle(color: Colors.white70, height: 1.7),
            ),
          ],
        ),
      ),

      const SizedBox(width: 40, height: 30),

      SizedBox(
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Quick Links",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text("Home", style: TextStyle(color: Colors.white70)),
            SizedBox(height: 8),
            Text("About", style: TextStyle(color: Colors.white70)),
            SizedBox(height: 8),
            Text("Gallery", style: TextStyle(color: Colors.white70)),
            SizedBox(height: 8),
            Text("Contact", style: TextStyle(color: Colors.white70)),
          ],
        ),
      ),

      const SizedBox(width: 40, height: 30),

      SizedBox(
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Programs",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Leadership Training",
              style: TextStyle(color: Colors.white70),
            ),
            SizedBox(height: 8),
            Text("Community Service", style: TextStyle(color: Colors.white70)),
            SizedBox(height: 8),
            Text(
              "Environmental Awareness",
              style: TextStyle(color: Colors.white70),
            ),
            SizedBox(height: 8),
            Text("Adventure Camps", style: TextStyle(color: Colors.white70)),
          ],
        ),
      ),

      const SizedBox(width: 40, height: 30),

      SizedBox(
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Contact",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              "Ranchi, Jharkhand",
              style: TextStyle(color: Colors.white70),
            ),

            const SizedBox(height: 8),

            const Text(
              "info@hsgjharkhand.org",
              style: TextStyle(color: Colors.white70),
            ),

            const SizedBox(height: 8),

            const Text(
              "+91 XXXXX XXXXX",
              style: TextStyle(color: Colors.white70),
            ),

            const SizedBox(height: 20),

            Row(
              children: const [
                Icon(Icons.facebook, color: AppColors.saffron),
                SizedBox(width: 15),
                Icon(Icons.email, color: AppColors.saffron),
                SizedBox(width: 15),
                Icon(Icons.public, color: AppColors.saffron),
              ],
            ),
          ],
        ),
      ),
    ];
  }
}
