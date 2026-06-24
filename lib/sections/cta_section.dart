import 'package:flutter/material.dart';
import '../core/theme/app_color.dart';

class CtaSection extends StatelessWidget {
  const CtaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.navyBlue,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 90,
      ),
      child: Column(
        children: [
          const Text(
            "Ready to Join HSG Jharkhand?",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          const SizedBox(
            width: 700,
            child: Text(
              "Become a part of a movement dedicated to leadership, service and nation building.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
                height: 1.7,
              ),
            ),
          ),

          const SizedBox(height: 40),

          ElevatedButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 32,
                vertical: 18,
              ),
              child: Text("Become a Member"),
            ),
          ),
        ],
      ),
    );
  }
}