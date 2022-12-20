import 'package:flutter/material.dart';
import 'package:get/get.dart';

//Second Intro
class OnBoarding_2 extends StatelessWidget {
  OnBoarding_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
          width: Get.width,
          height: Get.height,
          child: Image.asset(
            "images/OnBoarding _2.jpg",
            fit: BoxFit.fill,
            opacity: const AlwaysStoppedAnimation(0.9),
          )),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Text(
                            "Intro2".tr,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
