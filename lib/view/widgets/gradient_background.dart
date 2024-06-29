import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../themes/app_colors.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({super.key, this.gradientColors, this.child});
  final Widget? child ;
  final List<Color>? gradientColors;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 220.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: gradientColors ??
                [AppColors.red.shade50, AppColors.orange.shade50, AppColors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: child ,
    );
  }
}
