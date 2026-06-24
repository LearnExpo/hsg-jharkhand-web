import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../core/theme/app_color.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).smallerThan(TABLET);

    return Container(
      width: double.infinity,
      constraints: BoxConstraints(minHeight: isMobile ? 600 : 700),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/sample.png', fit: BoxFit.cover),
          ),

          Positioned.fill(
            child: Container(color: Colors.black.withOpacity(0.65)),
          ),

          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 20 : 80,
                vertical: 60,
              ),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1400),
                child: isMobile
                    ? _mobileLayout(context)
                    : _desktopLayout(context),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _desktopLayout(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: AppColors.saffron,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  "Hindustan Scouts & Guides Jharkhand",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              const Text(
                "Empowering Youth,\nServing the Nation",
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.1,
                ),
              ),

              const SizedBox(height: 24),

              const SizedBox(
                width: 650,
                child: Text(
                  "Building leadership, discipline, character and community service among young people across Jharkhand through scouting and guiding activities.",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                    height: 1.6,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 20,
                      ),
                    ),
                    child: const Text(
                      "Join Now",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),

                  const SizedBox(width: 16),

                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 20,
                      ),
                    ),
                    child: const Text(
                      "Learn More",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        const Spacer(),

        Expanded(
          flex: 4,
          child: Container(
            height: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: const DecorationImage(
                image: AssetImage('assets/images/sample.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _mobileLayout(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.saffron,
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Text(
            "HSG Jharkhand",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),

        const SizedBox(height: 24),

        const Text(
          "Empowering Youth,\nServing the Nation",
          textAlign: TextAlign.center,
          maxLines: 3,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            height: 1.2,
          ),
        ),

        const SizedBox(height: 20),

        const Text(
          "Building leadership, discipline and community service through scouting and guiding.",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white70, fontSize: 16, height: 1.6),
        ),

        const SizedBox(height: 30),

        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text("Join Now"),
            ),
          ),
        ),

        const SizedBox(height: 24),

        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/images/sample.png',
            height: 220,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
