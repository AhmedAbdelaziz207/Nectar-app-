import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/themes/app_colors.dart';
import 'package:groceries_app/utils/constants/app_assets.dart';
import 'package:groceries_app/utils/constants/locale_keys.g.dart';
import 'package:groceries_app/utils/constants/routes.dart';
import 'package:groceries_app/view/screens/onboarding/components/onboarding_background.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(AppAssets.splashIcon),
            Text(
              LocaleKeys.welcomeToStore.tr(),
              style: TextStyle(
                fontSize: 48.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.white,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              LocaleKeys.getYourGroceriesFastMsg.tr(),
              style: const TextStyle(color: AppColors.grey),
            ),
            SizedBox(
              height: 40.h,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.login );
              },
              child: Text(
                LocaleKeys.getStarted.tr(),
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 80.h,
            )
          ],
        ),
      ),
    );
  }
}
