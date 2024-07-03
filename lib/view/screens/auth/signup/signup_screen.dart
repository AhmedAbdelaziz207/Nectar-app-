import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries_app/view/screens/auth/signup/components/signup_form.dart';
import 'package:groceries_app/view/widgets/gradient_background.dart';
import 'package:groceries_app/view_model/cubit/signup/signup_cubit.dart';
import '../../../../view_model/utils/constants/app_assets.dart';
import '../../../../view_model/utils/constants/routes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Column(
              children: [
                GradientBackground(
                  child: SvgPicture.asset(
                    AppAssets.appLogo,
                  ),
                ),
                BlocListener<SignupCubit, SignupState>(
                  listener: (BuildContext context, SignupState state) {
                    handleStates(state, context);
                  },
                  child: const SignupForm(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void handleStates(SignupState state, context) {
    if (state is SignupLoading) {
      handleLoadingState(context);
    } else if (state is SignupSuccess) {
      hideLoadingDialog(context);
      Navigator.pushNamed(context, Routes.home);

    } else if (state is SignupNavigateToLogin) {
      Navigator.pushNamed(context, Routes.login);
    }
  }


  void hideLoadingDialog(BuildContext context) {
    Navigator.of(context).pop();
  }

  void handleLoadingState(context) {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

}
