import 'package:final_project/Component/CustomButton.dart';
import 'package:final_project/Component/CustomTextField.dart';
import 'package:final_project/Component/Profile/Avater.dart';
import 'package:final_project/Controller/Profile%20controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class My_Info extends StatelessWidget {
  My_Info({super.key});
  String GetImages = "";

  profileController C_Profile = Get.put(profileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#f2eff6"),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
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
           
          ),
          Padding(
            padding: EdgeInsets.only(left: 50, right: 50, top: 20),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Text("الاسم الاول", style: TextStyle(fontSize: 18))),
                CustomTextField(
                  onChanged: (Value) => C_Profile.firstName = Value,
                  labelTextShow: "",
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
                    labelTextShow: ""),
                SizedBox(
                  height: 30,
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Text(" البريد الالكتروني",
                        style: TextStyle(fontSize: 18))),
                CustomTextField(
                    onChanged: (Value) => C_Profile.email = Value,
                    labelTextShow: ""),
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
                    labelTextShow: ""),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  Colors: Color(0xff4A3A75),
                  NameOfButton: "حفظ",
                  heigthOfButton: 50,
                  widthOfButton: 324,
                  onPressed: () {
                    C_Profile.futchMyInfo();
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
