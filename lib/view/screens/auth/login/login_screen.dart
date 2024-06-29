import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries_app/themes/app_colors.dart';
import 'package:groceries_app/utils/constants/app_assets.dart';
import 'package:groceries_app/utils/constants/locale_keys.g.dart';
import 'package:groceries_app/view/screens/auth/login/login_form.dart';
import 'package:groceries_app/view/widgets/gradient_background.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GradientBackground(
              child: SvgPicture.asset(AppAssets.appLogo),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: LoginForm(),
            )

          ],
        ),
      ),
    );
  }
}
