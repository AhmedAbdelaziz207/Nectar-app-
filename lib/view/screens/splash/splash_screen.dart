import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/themes/app_colors.dart';
import 'package:groceries_app/utils/constants/app_assets.dart';
import 'package:groceries_app/utils/constants/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushNamedAndRemoveUntil(context, Routes.onboarding, (route) => false);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // splash icon
            Image.asset(AppAssets.splashIcon),
            SizedBox(
              width: 8.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'nectar',
                  style: TextStyle(
                      color: AppColors.white, fontSize: 62.sp, fontWeight: FontWeight.w400),
                ),
                const Text(
                  'o n l i n e  g r o c e r i e s',
                  style: TextStyle(color: AppColors.white, fontSize: 14),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
