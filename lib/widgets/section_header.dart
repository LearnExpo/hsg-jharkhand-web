import 'package:flutter/material.dart';
import '../core/theme/app_color.dart';

class SectionHeader extends StatelessWidget {
  final String badge;
  final String title;
  final String subtitle;

  const SectionHeader({
    super.key,
    required this.badge,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          badge,
          style: const TextStyle(
            color: AppColors.saffron,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.bold,
            color: AppColors.navyBlue,
          ),
        ),
        const SizedBox(height: 20),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black54,
              height: 1.8,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}