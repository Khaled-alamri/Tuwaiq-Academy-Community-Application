import 'package:final_project/Custom/Component/CustomButton.dart';
import 'package:final_project/Custom/Component/CustomTextField.dart';
import 'package:final_project/Custom/Component/Profile/Avater.dart';
import 'package:final_project/Style/Style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class My_Info extends StatelessWidget {
  const My_Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            liftShadow, 
            rightShadow]),
   
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(defaultPadding + 5),
          child: ListView(
            children: [
              
              Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: ImageIcon(
                        AssetImage("images/ion_chevron-back-circle-outline.png"),
                        size: 50,
                      ))),
              Avter(
                Img: "images/images 1.png",
                size: 70,
              ),
              Column(
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("الاسم الاول",style: TextStyle(fontSize: 18))),
                  CustomTextFieldWithBorder(labelTextShow: "", borderColor: primaryColor),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("الاسم الاخير",style: TextStyle(fontSize: 18))),
                  CustomTextFieldWithBorder(labelTextShow: "", borderColor: primaryColor),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(" البريد الالكتروني",style: TextStyle(fontSize: 18))),
                  CustomTextFieldWithBorder(labelTextShow: "", borderColor: primaryColor),
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("رقم التواصل",style: TextStyle(fontSize: 18),)),
                  CustomTextFieldWithBorder(labelTextShow: "" ,borderColor: primaryColor),
                  SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    Colors: Color(0xff4A3A75),
                    NameOfButton: "حفظ",
                    heigthOfButton: 55,
                    widthOfButton: double.infinity,
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
