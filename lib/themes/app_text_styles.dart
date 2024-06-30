import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart'; // If you are using Google Fonts

class AppTextStyles {
  static final TextStyle title = GoogleFonts.poppins(
    fontSize: 28.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  static final TextStyle subtitle = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
  );

  static final TextStyle label = GoogleFonts.poppins(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.grey,
  );

  static final TextStyle button = GoogleFonts.poppins(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static final TextStyle link = GoogleFonts.poppins(
    fontSize: 14.sp,
    color: AppColors.black,
  );

  static final TextStyle input = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.black,
  );
}

