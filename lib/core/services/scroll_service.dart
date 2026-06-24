import 'package:flutter/material.dart';

class ScrollService {
  static final ScrollController scrollController = ScrollController();

  static final heroKey = GlobalKey();
  static final aboutKey = GlobalKey();
  static final activitiesKey = GlobalKey();
  static final leadershipKey = GlobalKey();
  static final districtsKey = GlobalKey();
  static final galleryKey = GlobalKey();
  static final noticesKey = GlobalKey();
  static final contactKey = GlobalKey();

  static void scrollTo(GlobalKey key) {
    final context = key.currentContext;

    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeInOut,
      );
    }
  }
}