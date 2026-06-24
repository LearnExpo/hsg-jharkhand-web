import 'package:flutter/material.dart';
import 'package:hsg_fronend/core/services/scroll_service.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../core/theme/app_color.dart';

class AboutPreviewSection extends StatelessWidget {
  const AboutPreviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile =
        ResponsiveBreakpoints.of(context).smallerThan(TABLET);

    return Container(
       key: ScrollService.aboutKey,
      width: double.infinity,
      color: const Color(0xfff7f8fa),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 80,
        vertical: 80,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1400),
          child: isMobile
              ? _mobileLayout(context)
              : _desktopLayout(context),
        ),
      ),
    );
  }

  Widget _desktopLayout(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              "assets/images/sample.png",
              height: 500,
              fit: BoxFit.cover,
            ),
          ),
        ),

        const SizedBox(width: 60),

        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: AppColors.saffron.withOpacity(.15),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Text(
                  "About Us",
                  style: TextStyle(
                    color: AppColors.saffron,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Developing Responsible Citizens Through Scouting",
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: AppColors.navyBlue,
                  height: 1.2,
                ),
              ),

              const SizedBox(height: 24),

              const Text(
                "Hindustan Scouts & Guides Jharkhand is dedicated to nurturing leadership, discipline, teamwork, and community service among young people.",
                style: TextStyle(
                  fontSize: 18,
                  height: 1.8,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 16),

              const Text(
                "Through training programs, camps, social service initiatives, environmental awareness campaigns, and adventure activities, we empower youth to become active and responsible citizens.",
                style: TextStyle(
                  fontSize: 18,
                  height: 1.8,
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 32),

              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward),
                label: const Text("Learn More"),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _mobileLayout(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            "assets/images/sample.png",
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),

        const SizedBox(height: 30),

        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            color: AppColors.saffron.withOpacity(.15),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Text(
            "About Us",
            style: TextStyle(
              color: AppColors.saffron,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 20),

        const Text(
          "Developing Responsible Citizens Through Scouting",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: AppColors.navyBlue,
            height: 1.3,
          ),
        ),

        const SizedBox(height: 20),

        const Text(
          "Hindustan Scouts & Guides Jharkhand is dedicated to nurturing leadership, discipline, teamwork, and community service among young people.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            height: 1.8,
            color: Colors.black87,
          ),
        ),

        const SizedBox(height: 16),

        const Text(
          "Through training programs, camps, social service initiatives, environmental awareness campaigns, and adventure activities.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            height: 1.8,
            color: Colors.black54,
          ),
        ),

        const SizedBox(height: 28),

        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward),
            label: const Text("Learn More"),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                vertical: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}