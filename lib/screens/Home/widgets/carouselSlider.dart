import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeCarousel extends StatelessWidget {
  HomeCarousel({Key? key}) : super(key: key);
  final List<String> carousel_img = [
    'assets/images/car1.jpg',
    'assets/images/car2.jpg',
    'assets/images/car3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      child: CarouselSlider(
        items: carouselItems(),
        options: CarouselOptions(
          aspectRatio: 18 / 16,
          autoPlay: true,
        ),
      ),
    );
  }

  List<Widget> carouselItems() {
    return carousel_img
        .map((e) => Image.asset(
              e,
              fit: BoxFit.cover,
            ))
        .toList();
  }
}
