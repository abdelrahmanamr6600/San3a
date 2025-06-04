import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sana_app/core/utils/colors.dart';

class AppTextStyles {
  static final TextStyle h1 = GoogleFonts.cairo(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    height: 16 / 20.h,
  );

  static final TextStyle h2 = GoogleFonts.cairo(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    height: 160 / 100.h,
  );

  static final TextStyle button = GoogleFonts.cairo(
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
    height: 150 / 100.h,
  );

  static final TextStyle label = GoogleFonts.cairo(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    height: 16 / 14.h,
  );

  static final TextStyle body = GoogleFonts.cairo(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
    height: 160 / 100.h,
  );
}
