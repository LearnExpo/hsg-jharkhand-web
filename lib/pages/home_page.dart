import 'package:flutter/material.dart';
import '../widgets/custom_nav_bar.dart';
import '../widgets/footer.dart';
import '../widgets/hero_section.dart';
import '../widgets/mission_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroSection(),
            MissionSection(),
         
          ],
        ),
      ),
    );
  }
}