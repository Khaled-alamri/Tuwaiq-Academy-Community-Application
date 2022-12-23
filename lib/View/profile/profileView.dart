import 'package:final_project/Component/Profile/Avater.dart';
import 'package:final_project/Component/Profile/ItemOfProfile.dart';
import 'package:final_project/View/Camp/CampPresnt.dart';
import 'package:final_project/View/Sing/Forge_Password_or_Chang.dart';
import 'package:final_project/View/profile/My_Info.dart';
import 'package:final_project/View/profile/My_Post.dart';
import 'package:final_project/View/profile/TermsAndCondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4A3A75),
      body: Column(
        children: [
          Container(
            height: Get.height / 6,
            color: Color(0xff4A3A75),
            child: Padding(
              padding: const EdgeInsets.only(left: 40, top: 30, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "رهف محمد",
                    style: TextStyle(fontSize: 26, color: Color(0xffFFFFFF)),
                  ),
                  ImageIcon(AssetImage("images/mdi_location-exit.png"),
                      size: 50, color: Color(0xffFFFFFF)),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            height: Get.height / 1,
            width: Get.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffFFFFFF)),
            child: Column(
              children: [
                SizedBox(
                    height: 170,
                    child: Avter(
                      Img: "images/images 1.png",
                      size: 70,
                    )),
                Container(
                  width: 366,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffCBCBCB)),
                  child: Column(children: [
                    ItemProfile(
                      name: "بيانات شخصيه",
                      ontap: () {
                        Get.to(My_Info());
                      },
                    ),
                    ItemProfile(
                        name: "منشوراتي",
                        ontap: () {
                          Get.to(My_Post());
                        }),
                    ItemProfile(
                      name: "تحديث كلمة السر",
                      ontap: () {
                        Get.to(ForgePassword());
                      },
                    ),
                    ItemProfile(
                        name: "سياسة الاستخدام",
                        ontap: (() {
                          Get.to(TermsAndCondition());
                        })),
                    ItemProfile(name: "الدعم الفني"),
                  ]),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
