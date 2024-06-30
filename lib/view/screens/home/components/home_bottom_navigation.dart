import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../themes/app_colors.dart';
import '../../../../utils/constants/locale_keys.g.dart';

class HomeBottomNavigation extends StatelessWidget {
  const HomeBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.black,
      showUnselectedLabels: true,

      iconSize: 28.h,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.store_outlined),
          label: LocaleKeys.shop.tr(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.manage_search),
          label: LocaleKeys.explore.tr(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.shopping_cart_outlined),
          label: LocaleKeys.cart.tr(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.favorite_border),
          label: LocaleKeys.favorite.tr(),
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.person_outline),
          label: LocaleKeys.account.tr(),
        ),
      ],
    );
  }
}
