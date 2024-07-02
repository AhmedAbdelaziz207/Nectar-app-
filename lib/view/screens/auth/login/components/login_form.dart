import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/view_model/cubit/login/login_cubit.dart';

import '../../../../../themes/app_colors.dart';
import '../../../../../view_model/utils/constants/locale_keys.g.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.login.tr(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            LocaleKeys.enterYourEmailAndPassword.tr(),
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: 30.h,
          ),
          TextFormField(
            controller: context.read<LoginCubit>().emailController,
            style: Theme.of(context).textTheme.bodySmall,
            decoration: InputDecoration(
                labelText: LocaleKeys.email.tr(),
                labelStyle: Theme.of(context).textTheme.labelLarge,
                border: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.grey))),
          ),
          SizedBox(
            height: 25.h,
          ),
          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              bool isPasswordVisible =
                  state is LoginPasswordVisibilityToggled ? state.isPasswordVisible : false;

              return TextFormField(
                obscureText: !(isPasswordVisible),
                controller: context.read<LoginCubit>().passwordController,
                style: Theme.of(context).textTheme.bodySmall,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      context.read<LoginCubit>().togglePasswordVisibility();
                    },
                    icon: Icon(
                      isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  labelText: LocaleKeys.password.tr(),
                  labelStyle: Theme.of(context).textTheme.labelLarge,
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.grey),
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 12.h,
          ),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              LocaleKeys.forgotPassword.tr(),
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: ElevatedButton(
                onPressed: () {
                  context.read<LoginCubit>().login();
                },
                child: Text(
                  LocaleKeys.login.tr(),
                  style: Theme.of(context).textTheme.bodyLarge,
                )),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                LocaleKeys.doNotHaveAnAccount.tr(),
                style: Theme.of(context).textTheme.bodySmall,
              ),
              InkWell(
                onTap: (){
                  context.read<LoginCubit>().navigateToSignupScreen();
                },

                child: Text(
                  LocaleKeys.signup.tr(),

                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.primary),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
