import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../themes/app_colors.dart';
import '../../../../../utils/constants/locale_keys.g.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            style: Theme.of(context).textTheme.bodySmall,
            decoration: InputDecoration(
                labelText: LocaleKeys.userName.tr(),
                labelStyle: Theme.of(context).textTheme.labelLarge,
                border: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.grey))),
          ),
          SizedBox(
            height: 25.h,
          ), TextFormField(
            style: Theme.of(context).textTheme.bodySmall,
            decoration: InputDecoration(
                labelText: LocaleKeys.email.tr(),
                labelStyle: Theme.of(context).textTheme.labelLarge,
                border: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.grey))),
          ),
          SizedBox(
            height: 25.h,
          ),
       TextFormField(
                obscureText: false,
                style: Theme.of(context).textTheme.bodySmall,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                    },
                    icon: Icon(
                      Icons.visibility_off
                    ),
                  ),
                  labelText: LocaleKeys.password.tr(),
                  labelStyle: Theme.of(context).textTheme.labelLarge,
                  border: const UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.grey),
                  ),
                ),
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
              onPressed: () {},
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
                onTap: () {},
                child: Text(
                  LocaleKeys.login.tr(),
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
