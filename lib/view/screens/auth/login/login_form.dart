import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/utils/constants/locale_keys.g.dart';

import '../../../../themes/app_colors.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocaleKeys.Login.tr(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            LocaleKeys.enterYourCredential.tr(),
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: 30.h,
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: LocaleKeys.email.tr(),
                labelStyle: Theme.of(context).textTheme.labelLarge,
                border: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.grey))),
          ),
          SizedBox(
            height: 25.h,
          ),
          TextFormField(
            obscureText: true,
            style: Theme.of(context).textTheme.bodySmall,
            decoration: InputDecoration(
              suffix: IconButton(onPressed:(){} ,icon: const Icon(Icons.remove_red_eye_sharp,color: AppColors.black,)),
                labelText: LocaleKeys.password.tr(),
                labelStyle: Theme.of(context).textTheme.labelLarge,
                border: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.grey))),
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
                onPressed: () {},
                child: Text(
                  LocaleKeys.Login.tr(),
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
              Text(
                LocaleKeys.Signup.tr(),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.primary),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
