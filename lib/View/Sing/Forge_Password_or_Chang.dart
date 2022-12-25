import 'package:auto_size_text/auto_size_text.dart';
import 'package:final_project/Component/CustomButton.dart';
import 'package:final_project/Component/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgePassword extends StatelessWidget {
  const ForgePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(children: [
         Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 30,top: 17),
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: ImageIcon(
                      AssetImage("images/ion_chevron-back-circle-outline.png"),
                      size: 50,
                    )),
              )),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          height: Get.height/4,
                          width:Get.width/1.5,
                          child: Image.asset("images/changePassword-removebg-preview 1.png")),
                      ),
                      AutoSizeText("هل نسيت كلمة المرور..؟",style:TextStyle(fontSize: 51,) , maxLines: 5,),
                      AutoSizeText("لاتشيل هم.. نأمل تزويدنا بالبريد الالكتروني المستخدم ",style:TextStyle(fontSize: 25,) , maxLines: 5,),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: CustomTextField(
                            hintTextShow: "example@example.com",
                            labelTextShow: "البريد الإلكتروني",
                            validaterMasseg: 'من فضلك ادخل الايميل',
                            keyboardType: TextInputType.emailAddress,
                            IconForText: Icons.email,
                          ),
                      ),
                       Padding(
                         padding: const EdgeInsets.only(top: 30),
                         child: CustomButton(
                  Colors: Color(0xff4A3A75),
                  NameOfButton: "ارسل",
                  heigthOfButton: 50,
                  widthOfButton: 324,
                  onPressed: () {},
                ),
                       )
                    ],
                  )
      ],),
    );
  }
}