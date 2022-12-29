import 'package:auto_size_text/auto_size_text.dart';
import 'package:final_project/Component/CustomButton.dart';
import 'package:final_project/Component/CustomTextField.dart';
import 'package:final_project/Packages/package.dart';
import 'package:final_project/Services/firebase/Auth/EmailAndPassword.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgePassword extends StatelessWidget {
  ForgePassword({super.key});

  TextEditingController fogetpassword = TextEditingController();
  AuthFirebase auth = AuthFirebase();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [liftShadow, rightShadow]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.all(defaultPadding + 5),
          child: ListView(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: ImageIcon(
                        AssetImage(
                            "images/ion_chevron-back-circle-outline.png"),
                        size: 50,
                        color: primaryColor,
                      ))),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                        height: Get.height / 4,
                        width: Get.width / 1.5,
                        child: Image.asset(
                            "images/changePassword-removebg-preview 1.png")),
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: AutoSizeText(
                        " نسيت كلمة  \nالمرور..؟",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: primaryColor),
                        maxLines: 5,
                      )),
                  AutoSizeText(
                    "لاتشيل هم.. نأمل تزويدنا بالبريد الالكتروني المستخدم ",
                    style: TextStyle(
                        fontSize: 20, color: Colors.black.withOpacity(0.5)),
                    maxLines: 5,
                  ),
                  CustomTextFieldWithBorder(
                    controller: fogetpassword,
                    hintTextShow: "example@example.com",
                    labelTextShow: "البريد الإلكتروني",
                    validaterMasseg: 'من فضلك ادخل الايميل',
                    keyboardType: TextInputType.emailAddress,
                    IconForText: Icons.email,
                    borderColor: primaryColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: CustomButton(
                      Colors: Color(0xff4A3A75).withOpacity(0.8),
                      NameOfButton: "ارسال",
                      heigthOfButton: 55,
                      widthOfButton: double.infinity,
                      onPressed: () {
                        auth.forgetPassword(
                          email: fogetpassword.text,
                          isDone: (Value) {
                            if (Value) {
                              Get.snackbar("Request send",
                                  "Changing request had been send to your email, Please check your junk Box ");
                              Get.off(AppLayout());
                            }
                          },
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
