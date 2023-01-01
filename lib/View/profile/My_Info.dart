import 'package:final_project/Component/CustomButton.dart';
import 'package:final_project/Component/CustomTextField.dart';
import 'package:final_project/Component/Profile/Avater.dart';
import 'package:final_project/Controller/Profile%20controller.dart';
import 'package:final_project/Packages/package.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class My_Info extends StatelessWidget {
  My_Info({super.key});
  String GetImages = "";

  profileController C_Profile = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [liftShadow, rightShadow]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(
            backgroundColor: Colors.transparent,
            height: 50,
            iconColor: primaryColor,
            iconImage: "images/AppBarIcon/Back.png",
            onPressed: () {
              Get.back();
            },
            title: ""),
        body: ListView(
          children: [
            Avter(),
            Padding(
              padding: EdgeInsets.all(defaultPadding + 5),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child:
                          Text("الاسم الاول", style: TextStyle(fontSize: 18))),
                  CustomTextField(
                    onChanged: (Value) => C_Profile.firstName = Value  ,
                    labelTextShow: C_Profile.firstName,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child:
                          Text("الاسم الاخير", style: TextStyle(fontSize: 18))),
                  CustomTextField(
                      onChanged: (Value) => C_Profile.lastName = Value,
                      labelTextShow: C_Profile.lastName),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(" البريد الالكتروني",
                          style: TextStyle(fontSize: 18))),
                  CustomTextField(
                      onChanged: (Value) => C_Profile.email = Value,
                      labelTextShow: C_Profile.email),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "رقم التواصل",
                        style: TextStyle(fontSize: 18),
                      )),
                  CustomTextField(
                      onChanged: (Value) => C_Profile.phone = Value,
                      labelTextShow: C_Profile.phone),
                  SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    widthOfButton: double.infinity,
                    Colors: primaryColor.withOpacity(0.8),
                    NameOfButton: "حفظ",
                    heigthOfButton: 55,
                    onPressed: () {
                    
                      C_Profile.futchMyInfo();
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
