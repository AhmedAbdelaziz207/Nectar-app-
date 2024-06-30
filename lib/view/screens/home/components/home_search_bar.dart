import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/utils/constants/locale_keys.g.dart';

import '../../../../themes/app_colors.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      margin: EdgeInsets.symmetric(horizontal: 30.w),
      width: double.infinity,
      child: TextFormField(
        style: Theme.of(context).textTheme.bodySmall,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 8.w),
          filled: true,
          hintText: LocaleKeys.searchStore.tr(),
          hintStyle: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.grey),
          fillColor: AppColors.lightGrey,
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.black,
            size: 26,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(25),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}
