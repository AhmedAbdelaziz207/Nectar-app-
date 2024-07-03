import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../themes/app_colors.dart';
import '../../../../view_model/utils/constants/locale_keys.g.dart';

class HomePromotionHeader extends StatelessWidget {
  const HomePromotionHeader({super.key, required this.headerName});
  final String headerName ;
  @override
  Widget build(BuildContext context) {
    return             Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            headerName ,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            LocaleKeys.seeAll.tr()
            ,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppColors.primary
            ),
          )
        ],
      ),
    )
    ;
  }
}
