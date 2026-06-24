import 'package:flutter/material.dart';
import 'app_color.dart';

class AppTextStyles {
  static TextStyle heroTitle(bool mobile) {
    return TextStyle(
      fontSize: mobile ? 34 : 64,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      height: 1.2,
    );
  }

  static TextStyle heroSubtitle(bool mobile) {
    return TextStyle(
      fontSize: mobile ? 16 : 20,
      color: Colors.white70,
      height: 1.5,
    );
  }

  static const sectionTitle = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: AppColors.navyBlue,
  );

  static const sectionDescription = TextStyle(
    fontSize: 16,
    color: Colors.black54,
    height: 1.6,
  );
}