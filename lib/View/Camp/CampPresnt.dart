import 'package:auto_size_text/auto_size_text.dart';
import 'package:final_project/Component/CustomButton.dart';
import 'package:final_project/Component/CustomTextField.dart';
import 'package:final_project/Component/campComponent/CardCamp.dart';
import 'package:final_project/Component/TitelCamp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class CampPresnt extends StatelessWidget {
  const CampPresnt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(180), // Set this height
          child: Column(
            children: [
               CustomTitle(Title:  "المعسكرات",height1: 120),
              Container(
                height: 60,
                color: HexColor("#f2eff6"),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomButtonOfCamp(
                      NameOfButton: "الحاليه",
                      Colors: Color(0xff3FB7F8),
                      heigthOfButton: 38,
                      widthOfButton: 125,
                      onPressed: () {},
                    ),
                    CustomButtonOfCamp(
                      NameOfButton: "القادمه",
                      Colors: Color(0xffFFFFFF),
                      heigthOfButton: 38,
                      widthOfButton: 125,
                      onPressed: () {
                        Get.to(CampPresnt_2());
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        backgroundColor: HexColor("#f2eff6"),
        body: ListView(children: [
          CardCamp(
              DateOfCamp: "شهرين",
              NamberOfStudent: "25",
              Img: "images/js.png",
              NameOfCamp: "Flutter",
              detailsOfCamp: " معسكر جافاسكربت"),
        ]));
  }
}

class CampPresnt_2 extends StatelessWidget {
  CampPresnt_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(180), // Set this height
          child: Column(
            children: [
              CustomTitle(Title:"المعسكرات",height1: 120),
              Container(
                height: 60,
                color: HexColor("#f2eff6"),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomButtonOfCamp(
                      NameOfButton: "الحاليه",
                      Colors: Color(0xffFFFFFF),
                      heigthOfButton: 38,
                      widthOfButton: 125,
                      onPressed: () {
                        Get.to(CampPresnt());
                      },
                    ),
                    CustomButtonOfCamp(
                      NameOfButton: "القادمه",
                      Colors: Color(0xff3FB7F8),
                      heigthOfButton: 38,
                      widthOfButton: 125,
                      onPressed: () {
                        Get.to(CampPresnt_2());
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        backgroundColor: HexColor("#f2eff6"),
        body: ListView(children: [
          CardCamp(
              DateOfCamp: "شهرين",
              NamberOfStudent: "25",
              Img: "images/java.png",
              NameOfCamp: "Flutter",
              detailsOfCamp: "معسكر Java"),
              
          CardCamp(
              DateOfCamp: "شهرين",
              NamberOfStudent: "25",
              Img: "images/Flutter Logo 1.png",
              NameOfCamp: "Flutter",
              detailsOfCamp: "معسكر flutter"),
        ]));
  }
}
