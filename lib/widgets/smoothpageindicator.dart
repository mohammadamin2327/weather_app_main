// ignore_for_file: unused_import, avoid_print
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../main.dart';

class Indicator extends StatefulWidget {
  const Indicator({super.key});

  @override
  State<Indicator> createState() => _IndicatorState();
}

class _IndicatorState extends State<Indicator> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      axisDirection: Axis.horizontal,
      onDotClicked: (int value) {
        print(value);
      },
      controller: pageController,
      count: 2,
      effect: const ScrollingDotsEffect(
          dotColor: Colors.grey, activeDotColor: Colors.green,
          dotWidth: 22.0,dotHeight: 22.0,
          ),
    );
  }
}
