import 'package:flutter/material.dart';
import 'package:hsg_fronend/core/services/scroll_service.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../core/theme/app_color.dart';

class LeadershipSection extends StatelessWidget {
  const LeadershipSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile =
        ResponsiveBreakpoints.of(context).smallerThan(TABLET);

    return Container(
       key: ScrollService.leadershipKey,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 80,
        vertical: 90,
      ),
      color: Colors.white,
      child: Column(
        children: [
          const Text(
            "Leadership",
            style: TextStyle(
              color: AppColors.saffron,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            "Meet Our Leadership Team",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
              color: AppColors.navyBlue,
            ),
          ),

          const SizedBox(height: 20),

          const SizedBox(
            width: 800,
            child: Text(
              "Dedicated leaders guiding the growth and development of youth through scouting and community service initiatives across Jharkhand.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                height: 1.7,
                color: Colors.black54,
              ),
            ),
          ),

          const SizedBox(height: 60),

          Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: const [
              LeaderCard(
                imagePath: "assets/images/sample.png",
                name: "Leader Name",
                designation: "State Chief Commissioner",
              ),
              LeaderCard(
                imagePath: "assets/images/sample.png",
                name: "Leader Name",
                designation: "State Secretary",
              ),
              LeaderCard(
                imagePath: "assets/images/sample.png",
                name: "Leader Name",
                designation: "State Training Commissioner",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LeaderCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String designation;

  const LeaderCard({
    super.key,
    required this.imagePath,
    required this.name,
    required this.designation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.08),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(24),
            ),
            child: Image.asset(
              imagePath,
              height: 280,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Text(
                  name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppColors.navyBlue,
                  ),
                ),

                const SizedBox(height: 10),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.saffron.withOpacity(.15),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    designation,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: AppColors.saffron,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}