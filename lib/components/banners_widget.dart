import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannersWidget extends StatelessWidget {
  const BannersWidget({
    super.key,
    required this.items,
  });

  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Image.asset(items[itemIndex]),
      options: CarouselOptions(
        height: 170,
        aspectRatio: 1,
        viewportFraction: 0.6,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(seconds: 3),
        autoPlayCurve: Curves.linear,
        enlargeCenterPage: true,
      ),
    );
  }
}
