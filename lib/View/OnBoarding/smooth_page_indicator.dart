import 'package:final_project/Controller/PageViewController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Smooth_page_indicator extends StatelessWidget {
  Smooth_page_indicator({
    super.key,
    required PageController controller,
  }) : controller1 = controller;

  final PageController controller1;

  PageViewController p = Get.find();

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
        effect: ExpandingDotsEffect(
          dotHeight: 10,
          dotWidth: 10,
          activeDotColor: Colors.purple[900]!.withOpacity(0.3),
          dotColor: Colors.white,
        ),
        controller: controller1,
        count: 3);
  }
}
