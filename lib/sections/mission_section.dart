import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../core/theme/app_color.dart';

class MissionSection extends StatelessWidget {
  const MissionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile =
        ResponsiveBreakpoints.of(context).smallerThan(TABLET);

    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 80,
        vertical: 80,
      ),
      child: Column(
        children: [
          const Text(
            "Our Foundation",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.saffron,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            "Mission, Vision & Values",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: AppColors.navyBlue,
            ),
          ),

          const SizedBox(height: 20),

          const SizedBox(
            width: 800,
            child: Text(
              "Guiding young people towards leadership, discipline, service, and responsible citizenship through meaningful scouting experiences.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                height: 1.7,
              ),
            ),
          ),

          const SizedBox(height: 50),

          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: const [
              _FoundationCard(
                icon: Icons.flag,
                title: "Mission",
                description:
                    "To empower youth with leadership, discipline, teamwork, and service-minded values through scouting activities.",
              ),
              _FoundationCard(
                icon: Icons.visibility,
                title: "Vision",
                description:
                    "To build a generation of responsible citizens who contribute positively to society and the nation.",
              ),
              _FoundationCard(
                icon: Icons.favorite,
                title: "Core Values",
                description:
                    "Integrity, Respect, Service, Responsibility, Teamwork, and Commitment towards community development.",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _FoundationCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _FoundationCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.08),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 34,
            backgroundColor: AppColors.saffron.withOpacity(.15),
            child: Icon(
              icon,
              size: 34,
              color: AppColors.saffron,
            ),
          ),

          const SizedBox(height: 24),

          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.navyBlue,
            ),
          ),

          const SizedBox(height: 16),

          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              height: 1.8,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}