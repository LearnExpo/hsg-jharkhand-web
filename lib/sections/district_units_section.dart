import 'package:flutter/material.dart';
import 'package:hsg_fronend/core/services/scroll_service.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../core/theme/app_color.dart';

class DistrictUnitsSection extends StatelessWidget {
  const DistrictUnitsSection({super.key});

  static const List<String> districts = [
    "Ranchi",
    "Jamshedpur",
    "Dhanbad",
    "Bokaro",
    "Hazaribagh",
    "Deoghar",
    "Giridih",
    "Dumka",
    "Palamu",
    "Ramgarh",
    "Chatra",
    "Koderma",
  ];

  @override
  Widget build(BuildContext context) {
    final isMobile =
        ResponsiveBreakpoints.of(context).smallerThan(TABLET);

    return Container(
       key: ScrollService.districtsKey,
      width: double.infinity,
      color: const Color(0xfff7f8fa),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 80,
        vertical: 90,
      ),
      child: Column(
        children: [
          const Text(
            "Our Presence",
            style: TextStyle(
              color: AppColors.saffron,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            "Serving Across Jharkhand",
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
              "Our network of district units helps us reach young people across the state through leadership development, service projects and scouting programs.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                height: 1.7,
                color: Colors.black54,
              ),
            ),
          ),

          const SizedBox(height: 50),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 25,
            ),
            decoration: BoxDecoration(
              color: AppColors.navyBlue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Column(
              children: [
                Text(
                  "24+",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "District Units",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 50),

          Wrap(
            spacing: 15,
            runSpacing: 15,
            alignment: WrapAlignment.center,
            children: districts
                .map(
                  (district) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.grey.shade300,
                      ),
                    ),
                    child: Text(
                      district,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}