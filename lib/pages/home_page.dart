import 'package:flutter/material.dart';
import 'package:hsg_fronend/sections/about_preview_section.dart';
import 'package:hsg_fronend/sections/activities_section.dart';
import 'package:hsg_fronend/sections/cta_section.dart';
import 'package:hsg_fronend/sections/district_units_section.dart';
import 'package:hsg_fronend/sections/event_section.dart';
import 'package:hsg_fronend/sections/gallery_preview_section.dart';
import 'package:hsg_fronend/sections/leadership_section.dart';
import 'package:hsg_fronend/sections/notice_board_section.dart';
import 'package:hsg_fronend/widgets/footer.dart';
import '../sections/hero_section.dart';
import '../sections/statistics_section.dart';
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

            StatisticsSection(),
            AboutPreviewSection(),
            MissionSection(),
            ActivitiesSection(),
            GalleryPreviewSection(),
            LeadershipSection(),
            DistrictUnitsSection(),
            NoticeBoardSection(),
            EventsSection(),

            CtaSection(),
             Footer(),
          ],
        ),
      ),
    );
  }
}
