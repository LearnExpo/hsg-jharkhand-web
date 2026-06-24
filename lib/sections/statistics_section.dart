import 'package:flutter/material.dart';
import '../core/theme/app_color.dart';

class StatisticsSection extends StatelessWidget {
  const StatisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        vertical: 60,
        horizontal: 20,
      ),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        spacing: 40,
        runSpacing: 40,
        children: const [
          _StatCard("5000+", "Members"),
          _StatCard("24", "District Units"),
          _StatCard("150+", "Events"),
          _StatCard("50+", "Years"),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String value;
  final String label;

  const _StatCard(this.value, this.label);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Column(
        children: [
          Text(
            value,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: AppColors.navyBlue,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}