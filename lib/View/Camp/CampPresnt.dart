import 'package:auto_size_text/auto_size_text.dart';
import 'package:final_project/Component/campComponent/CardCamp.dart';
import 'package:final_project/Custom/CustomAppBarWithOutPic.dart';
import 'package:final_project/Router/Routers.dart';
import 'package:final_project/Style/Style.dart';
import 'package:final_project/Component/TitelCamp.dart';
import 'package:final_project/View/Camp/AddingCampScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class CampPresnt extends StatelessWidget {
  const CampPresnt({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding -5),
       height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        gradient:
            LinearGradient(colors: [Color(0xFFD9FFF3), Color(0xFFFFE1F9)]),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(children: [
            CardCamp(
              onTap: (){
                Get.toNamed(RouterNames.PresentCamp);
              },
              backgroundColor: flutterRightShadow.withOpacity(0.2),
                DateOfCamp: "28-12-2022",
                NamberOfStudent: "22",
                Img: "images/BackGround/Flutter_Logo.png",
                NameOfCamp: "معسكر Flutter ",
                detailsOfCamp: "معسكر تدريبي مكثف لتطوير تطبيقات الجوال والويب باستخدام إطار عمل Flutter، والذي يعتبر الإطار الأحدث والأسهل لبناء تطبيقات تعمل على عدة أنظمة."),
          ])),
    );
  }
}

class CampPresnt_2 extends StatelessWidget {
  CampPresnt_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding - 5),
      child: Scaffold(
          backgroundColor: Colors.white.withOpacity(0.3),
          body: ListView(children: [
            CardCamp(
              backgroundColor: jScriptRightShadow,
                DateOfCamp: "15-01-2022",
                NamberOfStudent: "23",
                Img: "images/BackGround/JavaScript_Logo.png",
                NameOfCamp: "معسكر Java",
                detailsOfCamp: "معسكر مكثف يقدّم تجربة فريدة من نوعها بخبرة عميقة في بناء واختبار تطبيقات الويب باستخدام لغة JavaScript",
                onTap: (){
                  Get.toNamed(RouterNames.FutureCamp);
                },),
            
          ])),
    );
  }
}

class TitelPage extends StatelessWidget {
  const TitelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: defaultPadding),
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        gradient:
            LinearGradient(colors: [Color(0xFFD9FFF3), Color(0xFFFFE1F9)]),
      ),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: CustomAppBarWithOutPic(
            title: "المعسكرات",
            height: 60,
            titleColor: primaryColor,
          backgroundColor: primaryColor.withOpacity(0.1),
          ),
          body: Column(
            children: [
              TabBar(
                unselectedLabelColor: Colors.white,
                
                // labelColor: primaryColor,
                indicator: UnderlineTabIndicator(),
                tabs: [
                  Tab(
                      child: Text(
                    "الحاليه",
                    style: TextStyle(
                        fontSize: 25, color: primaryColor),
                  )),
                  Tab(
                      child: Text(
                    "القادمه",
                    style: TextStyle(
                        fontSize: 25, color: primaryColor),
                  ))
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    CampPresnt(), 
                    CampPresnt_2()
                    ],
                ),
              ),
            ],
            ),
          ],
        ), floatingActionButton: FloatingActionButton(
          backgroundColor: HexColor("#117c78"),
          onPressed: () {
            Get.to(AddingCampScreen());
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
    ;
  }
}
