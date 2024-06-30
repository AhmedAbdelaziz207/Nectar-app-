import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries_app/themes/app_colors.dart';
import 'package:groceries_app/utils/constants/app_assets.dart';
import 'package:groceries_app/utils/constants/locale_keys.g.dart';
import 'package:groceries_app/view/screens/auth/login/components/login_form.dart';
import 'package:groceries_app/view/widgets/gradient_background.dart';
import 'package:groceries_app/view_model/cubit/login/login_cubit.dart';

import '../../../../utils/constants/routes.dart';

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: BlocListener<LoginCubit, LoginState>(
                listener: (context, state) {
                  if (state is LoginSuccess) {
                    hideLoadingDialog(context);
                    Navigator.pushNamed(context, Routes.home);
                  } else if (state is LoginFailure) {
                    hideLoadingDialog(context);
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Error"),
                          content: Text(state.error),
                        );
                      },
                    );
                  } else if (state is LoginLoading) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    );
                  }
                  ;
                },
                child: const LoginForm(),
              ),
            ),

          ],
        ),
      ),
    );
  }

  void hideLoadingDialog(BuildContext context) {
    Navigator.of(context).pop();
  }
}
