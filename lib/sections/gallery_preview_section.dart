import 'package:flutter/material.dart';
import 'package:hsg_fronend/core/services/scroll_service.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../core/theme/app_color.dart';

class GalleryPreviewSection extends StatelessWidget {
  const GalleryPreviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile =
        ResponsiveBreakpoints.of(context).smallerThan(TABLET);

    return Container(
       key: ScrollService.galleryKey,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 80,
        vertical: 80,
      ),
      child: Column(
        children: [
          const Text(
            "Gallery",
            style: TextStyle(
              color: AppColors.saffron,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "Moments That Inspire",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: AppColors.navyBlue,
            ),
          ),

          const SizedBox(height: 50),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isMobile ? 2 : 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemBuilder: (_, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/sample.png",
                  fit: BoxFit.cover,
                ),
              );
            },
          ),

          const SizedBox(height: 40),

          ElevatedButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 16,
              ),
              child: Text("View Full Gallery"),
            ),
          ),
        ],
      ),
    );
  }
}