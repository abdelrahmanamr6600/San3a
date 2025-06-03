import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sana_app/core/utils/colors.dart';

class AppTextStyles {
  static final TextStyle h1 = GoogleFonts.cairo(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    height: 16 / 20,
  );

  static final TextStyle h2 = GoogleFonts.cairo(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    height: 160 / 100, 
  );

  static final TextStyle button = GoogleFonts.cairo(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    height: 150 / 100,
  );

  static final TextStyle label = GoogleFonts.cairo(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    height: 16 / 14,
  );

  static final TextStyle body = GoogleFonts.cairo(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    height: 160 / 100,
  );
}
