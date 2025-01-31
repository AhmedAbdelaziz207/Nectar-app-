import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../view_model/utils/constants/app_assets.dart';

class OnboardingBackground extends StatelessWidget {
  const OnboardingBackground({super.key, this.child});
  final Widget? child  ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Image.asset(
            AppAssets.onboardingImage,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          child??  Text("No child exist ", style: GoogleFonts.abel(
          ),),
        ],
      ),
    );
  }
}
