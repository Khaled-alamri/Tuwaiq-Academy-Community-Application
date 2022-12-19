import 'package:final_project/View/OnBoarding/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding_1 extends StatelessWidget {
  OnBoarding_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
          width: Get.width,
          child: Image.asset(
            "images/OnBoarding_1.png",
            fit: BoxFit.fill,
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
                        child: Text(
                          "Welcome".tr,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    Align(
                        alignment: Alignment.topRight,
                        child: RichText(
                          text: TextSpan(
                              text: "Intro1".tr,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  height: 0)),
                        ))
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
