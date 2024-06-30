import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries_app/utils/constants/app_assets.dart';
import 'package:groceries_app/view/screens/auth/signup/components/signup_form.dart';
import 'package:groceries_app/view/widgets/gradient_background.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            children: [
              GradientBackground(
                child: SvgPicture.asset(
                  AppAssets.appLogo,
                ),
              ),


              const SignupForm()
            ],
          ),
        ),
      ),
    );
  }
}
