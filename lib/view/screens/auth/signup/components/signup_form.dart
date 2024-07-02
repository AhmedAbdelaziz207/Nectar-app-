import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/view_model/cubit/signup/signup_cubit.dart';

import '../../../../../themes/app_colors.dart';
import '../../../../../view_model/utils/constants/locale_keys.g.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: context.read<SignupCubit>().formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.signup.tr(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              LocaleKeys.enterYourCredentials.tr(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(
              height: 30.h,
            ),
            TextFormField(
              controller: context.read<SignupCubit>().usernameController,
              style: Theme.of(context).textTheme.bodySmall,
              validator: (username) {
                if (username!.length <= 6) {
                  return LocaleKeys.invalidUsername.tr();
                }

                return null;
              },
              decoration: InputDecoration(
                  labelText: LocaleKeys.userName.tr(),
                  labelStyle: Theme.of(context).textTheme.labelLarge,
                  border:
                      const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.grey))),
            ),
            SizedBox(
              height: 25.h,
            ),
            TextFormField(
              controller: context.read<SignupCubit>().emailController,
              style: Theme.of(context).textTheme.bodySmall,
              onChanged: context.read<SignupCubit>().onEmailChange,
              decoration: InputDecoration(
                  labelText: LocaleKeys.email.tr(),
                  labelStyle: Theme.of(context).textTheme.labelLarge,
                  border:
                      const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.grey))),
              validator: (email) {
                if (!(RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(email!))) {
                  return LocaleKeys.invalidEmail.tr();
                }
                return null;
              },
            ),
            SizedBox(
              height: 25.h,
            ),
            BlocBuilder<SignupCubit, SignupState>(
              builder: (context, state) {
                bool isPasswordVisible =
                    state is SignupPasswordToggle ? state.passwordVisibility : false;

                return TextFormField(
                  controller: context.read<SignupCubit>().passwordController,
                  obscureText: !isPasswordVisible,
                  style: Theme.of(context).textTheme.bodySmall,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        context.read<SignupCubit>().togglePasswordVisibility();
                      },
                      icon: isPasswordVisible
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                    ),
                    labelText: LocaleKeys.password.tr(),
                    labelStyle: Theme.of(context).textTheme.labelLarge,
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.grey),
                    ),
                  ),
                  validator: (password) {
                    if (password!.length <= 6) {
                      return LocaleKeys.invalidPassword.tr();
                    }

                    return null;
                  },
                );
              },
            ),
            SizedBox(
              height: 12.h,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text.rich(
              TextSpan(
                  text: LocaleKeys.byAgree.tr(),
                  style: Theme.of(context).textTheme.bodySmall,
                  children: [
                    TextSpan(
                      text: LocaleKeys.serviceConditions.tr(),
                      style: const TextStyle(
                        color: AppColors.primary,
                      ),
                    ),
                    TextSpan(text: LocaleKeys.and.tr()),
                    TextSpan(
                      text: LocaleKeys.ourPrivacy.tr(),
                      style: const TextStyle(
                        color: AppColors.primary,
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 20.h,
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: ElevatedButton(
                onPressed: () {
                  context.read<SignupCubit>().submit();
                },
                child: Text(
                  LocaleKeys.signup.tr(),
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  LocaleKeys.alreadyHaveAnAccount.tr(),
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                InkWell(
                  onTap: () {
                    context.read<SignupCubit>().navigateToLogin();
                  },
                  child: Text(
                    LocaleKeys.login.tr(),
                    style:
                        Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.primary),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
