import 'package:flutter/material.dart';
import '../core/theme/app_color.dart';

class EventsSection extends StatelessWidget {
  const EventsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfff7f8fa),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 80,
        vertical: 80,
      ),
      child: Column(
        children: [
          const Text(
            "Latest Updates",
            style: TextStyle(
              color: AppColors.saffron,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            "News & Events",
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
              _EventCard(
                title: "State Training Camp",
                date: "July 2026",
              ),
              _EventCard(
                title: "Community Service Drive",
                date: "August 2026",
              ),
              _EventCard(
                title: "Environmental Awareness Program",
                date: "September 2026",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _EventCard extends StatelessWidget {
  final String title;
  final String date;

  const _EventCard({
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 15,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: const TextStyle(
              color: AppColors.saffron,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: AppColors.navyBlue,
            ),
          ),

          const SizedBox(height: 16),

          const Text(
            "Stay connected with our latest programs, camps and community initiatives.",
            style: TextStyle(
              height: 1.7,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}