import 'package:flutter/material.dart';
import 'package:hsg_fronend/core/theme/app_color.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.6, // Takes up 60% of the screen height
      decoration: const BoxDecoration(
        color: AppColors.navyBlue, // You can swap this with a NetworkImage later
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Empowering Youth, Serving the Nation",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 48,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Join the Bharat Scouts and Guides, Jharkhand movement.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white70, fontSize: 20),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            ),
            child: const Text("Become a Member", style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}