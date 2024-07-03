import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../themes/app_colors.dart';
import '../../../../view_model/utils/constants/app_assets.dart';

class HomeProductListItem extends StatelessWidget {
  const HomeProductListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.h,
      width: 190.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 7,
          ),
        ],
      ),              child: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 14.0.w, vertical: 12.h),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Image.asset(AppAssets.productIcon),
          ),
          const SizedBox(
            height: 34,
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              "Red Apple ",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: AppColors.black),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              "1kg, Priceg ",
              style:
              Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.grey),
            ),
          ),
          SizedBox(height: 18.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$4.99",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: AppColors.black),
              ),
              IconButton(

                iconSize: 32,
                style: IconButton.styleFrom(
                  backgroundColor: AppColors.primary,
                ),
                onPressed: () {},
                icon: const Icon(Icons.add,color: AppColors.white,),
              )
            ],
          )
        ],
      ),
    ),
    );
  }
}
