import 'package:flutter/material.dart';
import 'package:hsg_fronend/core/services/scroll_service.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../core/theme/app_color.dart';

class NoticeBoardSection extends StatelessWidget {
  const NoticeBoardSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile =
        ResponsiveBreakpoints.of(context).smallerThan(TABLET);

    final notices = [
      {
        "title": "State Training Camp Registration Open",
        "date": "15 July 2026"
      },
      {
        "title": "Annual State Council Meeting Notice",
        "date": "10 July 2026"
      },
      {
        "title": "District Camp Schedule Published",
        "date": "05 July 2026"
      },
      {
        "title": "Volunteer Recruitment Drive 2026",
        "date": "01 July 2026"
      },
    ];

    return Container(
       key: ScrollService.noticesKey,
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 80,
        vertical: 90,
      ),
      child: Column(
        children: [
          const Text(
            "Announcements",
            style: TextStyle(
              color: AppColors.saffron,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            "Latest Notices",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
              color: AppColors.navyBlue,
            ),
          ),

          const SizedBox(height: 20),

          const Text(
            "Stay updated with the latest circulars, notices, registrations and organizational updates.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18,
              height: 1.7,
            ),
          ),

          const SizedBox(height: 50),

          Container(
            constraints: const BoxConstraints(
              maxWidth: 1000,
            ),
            child: Column(
              children: notices.map((notice) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xfff7f8fa),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colors.grey.shade200,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: AppColors.saffron.withOpacity(.15),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.description,
                          color: AppColors.saffron,
                        ),
                      ),

                      const SizedBox(width: 20),

                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text(
                              notice["title"]!,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            const SizedBox(height: 6),

                            Text(
                              notice["date"]!,
                              style: const TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),

                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),

          const SizedBox(height: 30),

          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.visibility),
            label: const Text("View All Notices"),
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}