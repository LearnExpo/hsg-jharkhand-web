import 'package:flutter/material.dart';
import 'info_card.dart';

class MissionSection extends StatelessWidget {
  const MissionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: const Wrap(
        spacing: 20,
        runSpacing: 20,
        alignment: WrapAlignment.center,
        children: [
          InfoCard(icon: Icons.school, title: "Education", description: "Empowering youth through skill development."),
          InfoCard(icon: Icons.volunteer_activism, title: "Service", description: "Serving society through community initiatives."),
          InfoCard(icon: Icons.nature_people, title: "Adventure", description: "Building character through outdoor activities."),
        ],
      ),
    );
  }
}