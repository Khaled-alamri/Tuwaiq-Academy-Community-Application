import 'package:final_project/Controller/PageViewController.dart';
import 'package:final_project/Router/Routers.dart';
import 'package:final_project/Style/Style.dart';
import 'package:final_project/View/OnBoarding/OnBoarding_1.dart';
import 'package:final_project/View/OnBoarding/OnBoarding_2.dart';
import 'package:final_project/View/OnBoarding/OnBoarding_3.dart';
import 'package:final_project/View/OnBoarding/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageViewScreen extends StatelessWidget {
  PageViewScreen({super.key});

  PageViewController pageViewController = Get.put(PageViewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: pageViewController.controller,
          onPageChanged: (index2) {
            // This Function To let Me Move Btween The Pages with spicfic condtion
            pageViewController.changePage(index: index2);
          },
          children: [
            OnBoarding_1(),
            OnBoarding_2(),
            OnBoarding_3(),
          ],
        ),

        //This Part For The Dots on The Page View
        Positioned(
          top: 200,
          right: 100,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Smooth_page_indicator(
                controller: pageViewController.controller,
              )),
        ),

        //This Part For a Page View Buttons when The User Click The Button Will Moved to The Next Page
        //Condation Here if we are In The Last Page The Color and the text Will Cahnged
        //I used GetBuilder To Refrach the Page when we are in the Last Page
        GetBuilder<PageViewController>(
          builder: (controller) {
            return controller.LastPage
                ? Positioned(
                    right: 250,
                    top: 600,
                    child: SizedBox(
                      width: 150,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor.withOpacity(0.5)),
                          onPressed: () {
                            //Get.off(appLayout());
                          },
                          child: Text(
                            "WelcomeButton".tr,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                    ),
                  )
                : Positioned(
                    right: 250,
                    top: 600,
                    child: SizedBox(
                      width: 150,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white.withOpacity(0.5)),
                          onPressed: () {
                            pageViewController.controller.nextPage(
                                duration: Duration(microseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Text(
                            "Next".tr,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                    ),
                  );
          },
        )
      ],
    ));
  }
}
