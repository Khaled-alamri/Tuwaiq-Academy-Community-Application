import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding_3 extends StatelessWidget {
  OnBoarding_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
          width: Get.width,
          height: Get.height,
          child: Image.asset(
            "images/OnBoarding_3.png",
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
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Text(
                            "Intro3".tr,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
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
