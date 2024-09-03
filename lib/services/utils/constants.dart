import 'package:flutter/material.dart';

class AppConstants {
  static List<String> photo = [
    "assets/images/yahya.jpeg",
    "assets/images/yahya.jpeg",
    "assets/images/yahya.jpeg",
    "assets/images/yahya.jpeg",
    "assets/images/yahya.jpeg",
  ];
}

Widget carouselWidget() {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/yahya.jpeg"))),
  );
}
