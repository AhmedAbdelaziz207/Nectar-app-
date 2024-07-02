import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app/view/screens/home/components/home_bottom_navigation.dart';
import 'package:groceries_app/view/screens/home/components/home_product_list_item.dart';
import 'package:groceries_app/view/screens/home/components/home_promotion_header.dart';
import 'package:groceries_app/view/screens/home/components/home_search_bar.dart';
import 'package:groceries_app/view/screens/home/components/home_slider.dart';
import 'package:groceries_app/view/screens/home/components/home_top_bar.dart';

import '../../../view_model/utils/constants/app_assets.dart';
import '../../../view_model/utils/constants/locale_keys.g.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const HomeBottomNavigation(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const HomeTopBar(),
              SizedBox(
                height: 12.h,
              ),
              const HomeSearchBar(),
              SizedBox(
                height: 8.h,
              ),

              const HomeSlider(),

              //   Image.asset(AppAssets.homeBanner),
              HomePromotionHeader(
                headerName: LocaleKeys.exclusiveOffer.tr(),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                height: 300.h,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    HomeProductListItem(),
                    HomeProductListItem(),
                    HomeProductListItem(),
                    HomeProductListItem(),
                    HomeProductListItem(),
                    HomeProductListItem(),
                  ],
                ),
              ),

              HomePromotionHeader(
                headerName: LocaleKeys.bestSelling.tr(),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                height: 300.h,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    HomeProductListItem(),
                    HomeProductListItem(),
                    HomeProductListItem(),
                    HomeProductListItem(),
                    HomeProductListItem(),
                    HomeProductListItem(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
