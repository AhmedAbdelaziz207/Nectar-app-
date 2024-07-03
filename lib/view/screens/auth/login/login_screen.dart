import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries_app/view/screens/auth/login/components/login_form.dart';
import 'package:groceries_app/view/widgets/gradient_background.dart';
import 'package:groceries_app/view_model/cubit/login/login_cubit.dart';
import '../../../../view_model/utils/constants/app_assets.dart';
import '../../../../view_model/utils/constants/routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                      handleLoginSuccess(
                        context,
                      );
                    } else if (state is LoginFailure) {
                      handleFailureState(context, state.error);
                    } else if (state is LoginLoading) {
                      handleLoadingState(
                        context,
                      );
                    } else if (state is LoginNavigationToSignup) {
                      handleNavigation(context);
                    }
                  },
                  child: const LoginForm(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
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

  void handleFailureState(context, errorMessage) {
    hideLoadingDialog(context);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Error"),
          content: Text(errorMessage),
        );
      },
    );
  }

  void handleLoginSuccess(context) {
    hideLoadingDialog(context);
    Navigator.pushNamed(
      context,
      Routes.home,
    );
  }

  void handleNavigation(BuildContext context) {
    Navigator.pushNamed(context, Routes.signup);
  }
}
