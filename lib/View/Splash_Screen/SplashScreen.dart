import 'package:final_project/View/OnBoarding/PageView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xFFD9FFF3), Color(0xFFFFE1F9)])),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: AnimatedSplashScreen(
                duration: 3000,
                splash: "images/Logo.png",
                splashIconSize: 300,
                nextScreen: PageViewScreen(),
                splashTransition: SplashTransition.rotationTransition,
                backgroundColor: Colors.transparent,)
                )
    );
  }
}
