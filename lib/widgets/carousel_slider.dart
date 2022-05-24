import 'dart:io';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
      Image.asset("images/pixeltruejoggingpng.png"),
      Image.asset('images/pixeltruehealthyeating.png'),
      Image.asset('images/pixeltruetimemanagement.png'),
    ];
    return Container(
      child: CarouselSlider(
        items: list,
        options: CarouselOptions(
          height: double.infinity,
          viewportFraction: 2,
          autoPlayInterval: const Duration(seconds: 5),
          autoPlay: true,
        ),
      ),
    );
  }
}

class MyOwnCarousel extends StatefulWidget {
  @override
  _MyOwnCarouselState createState() => _MyOwnCarouselState();
}

class _MyOwnCarouselState extends State<MyOwnCarousel> {
  Map<int, String> imagemap = {
    1: "images/pixeltruejoggingpng.png",
    2: 'images/pixeltruehealthyeating.png',
    3: 'images/pixeltruetimemanagement.png',
  };
  int count = 1;
  String imagepath = "images/pixeltruejoggingpng.png";
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(imagepath),
    );
  }

  void image_switcher() async {
    int count = 1;
    while (count < 5) {
      if (count == 4) {
        count = 1;
      }
      setState(() {
        String? s = imagemap[count];
        if (s != null) {
          imagepath = s;
        }
      });
      await Future.delayed(Duration(seconds: 5));
      count++;
    }
  }

  @override
  void initState() {
    super.initState();
    image_switcher();
  }
}
