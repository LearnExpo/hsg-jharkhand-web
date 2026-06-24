import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hsg_fronend/core/theme/app_color.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.navyBlue,
        primary: AppColors.navyBlue,
        secondary: AppColors.saffron,
        surface: AppColors.offWhite,
      ),
      textTheme: GoogleFonts.montserratTextTheme(),
      // Define button themes globally
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.saffron,
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}