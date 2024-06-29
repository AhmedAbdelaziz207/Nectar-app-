import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/themes/app_text_styles.dart';

import 'app_colors.dart';

class LightTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    elevatedButtonTheme: ElevatedButtonThemeData(

      style: ElevatedButton.styleFrom(
        minimumSize: Size(353.w, 67.h),
        maximumSize: Size(353.w, 67.h),
        backgroundColor: AppColors.primary,
      ),
    ),

    textTheme: TextTheme(
      titleMedium: AppTextStyles.title,
      titleSmall: AppTextStyles.subtitle,
      labelLarge: AppTextStyles.label,
      bodyLarge:AppTextStyles.button ,
      bodyMedium: AppTextStyles.input,
      bodySmall: AppTextStyles.link,
    )
  );
}
