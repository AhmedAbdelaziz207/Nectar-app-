import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../../view_model/utils/constants/app_assets.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Image.asset(AppAssets.homeBanner),
        Image.asset(AppAssets.homeBanner),
        Image.asset(AppAssets.homeBanner),
      ],
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        enlargeFactor: .2,
        viewportFraction: 0.9,
        aspectRatio: 3,
      ),
    );
  }
}
