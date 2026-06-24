import 'package:flutter/material.dart';
import 'package:hsg_fronend/core/services/scroll_service.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../core/theme/app_color.dart';

class ActivitiesSection extends StatelessWidget {
  const ActivitiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile =
        ResponsiveBreakpoints.of(context).smallerThan(TABLET);

    return Container(
        key: ScrollService.activitiesKey,
      width: double.infinity,
      color: const Color(0xfff7f8fa),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 80,
        vertical: 80,
      ),
      child: Column(
        children: [
          const Text(
            "What We Do",
            style: TextStyle(
              color: AppColors.saffron,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            "Activities & Programs",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: AppColors.navyBlue,
            ),
          ),

          const SizedBox(height: 50),

          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: const [
              _ActivityCard(Icons.campaign, "Leadership Training"),
              _ActivityCard(Icons.park, "Camping"),
              _ActivityCard(Icons.volunteer_activism, "Community Service"),
              _ActivityCard(Icons.eco, "Environment Awareness"),
              _ActivityCard(Icons.health_and_safety, "Disaster Response"),
              _ActivityCard(Icons.school, "Skill Development"),
            ],
          ),
        ],
      ),
    );
  }
}

class _ActivityCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const _ActivityCard(this.icon, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 180,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.06),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 45,
            color: AppColors.saffron,
          ),

          const SizedBox(height: 16),

          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}