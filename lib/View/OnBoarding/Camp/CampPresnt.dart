import 'package:auto_size_text/auto_size_text.dart';
import 'package:final_project/Component/CustomButton.dart';
import 'package:final_project/Component/CustomTextField.dart';
import 'package:final_project/Component/campComponent/CardCamp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class CampPresnt extends StatelessWidget {
  CampPresnt({super.key});
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#f2eff6"),
        body: ListView(children: [
          Container(
            height: 120,
            padding: EdgeInsetsDirectional.only(bottom: 10),
            width: double.infinity,
            color: HexColor("#d4c7de"),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "المعسكرات",
                style: TextStyle(
                  color: HexColor("#423d62"),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomButtonOfCamp(
                NameOfButton: "الحاليه",
                Colors: Color(0xffFFFFFF),
                heigthOfButton: 38,
                widthOfButton: 125,
                onPressed: () {},
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
          CardCamp(
              DateOfCamp: "شهرين",
              NamberOfStudent: "25",
              NameOfCamp: "Flutter",
              detailsOfCamp: " ارحمني"),
          //later with database.
          //  IconButton(onPressed: (){
          //   showDialog(
          //           context: context,
          //           builder: (ctx) => AlertDialog(
          //             title: Center(child: const Text("اضافة معسكر")),

          //             actions: <Widget>[

          //               CustomTextField2(hintTextShow: "Name",controller:controller , ),
          //               TextButton(
          //                 onPressed: () {
          //                   Navigator.of(ctx).pop();
          //                 },
          //                 child: Container(
          //                   padding: const EdgeInsets.all(14),
          //                   child: const Text("okay"),
          //                 ),

          //               ),

          //               ]));
          //  }, icon: Icon(Icons.add))
        ]));
  }
}

class CampPresnt_2 extends StatelessWidget {
  CampPresnt_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#f2eff6"),
        body: ListView(children: [
          Container(
            height: 120,
            padding: EdgeInsetsDirectional.only(bottom: 10),
            width: double.infinity,
            color: HexColor("#d4c7de"),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "المعسكرات",
                style: TextStyle(
                  color: HexColor("#423d62"),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
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
                  
                },
              ),
            ],
          ),
          CardCamp(
              DateOfCamp: "شهرين",
              NamberOfStudent: "25",
              NameOfCamp: "Flutter",
              detailsOfCamp: "ابراهيم ارحمني"),
              CardCamp(
              DateOfCamp: "شهرين",
              NamberOfStudent: "25",
              NameOfCamp: "Flutter",
              detailsOfCamp: "ابراهيم ارحمني"),
        ]));
  }
}
