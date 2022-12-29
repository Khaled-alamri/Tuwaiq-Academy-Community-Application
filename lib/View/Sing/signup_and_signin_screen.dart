import 'package:final_project/Component/CustomButton.dart';
import 'package:final_project/Component/SingComponenr/logoWithTitle.dart';
import 'package:final_project/Custom/CustomSlideButton.dart';
import 'package:final_project/Packages/package.dart';
import 'package:final_project/Router/Routers.dart';
import 'package:final_project/View/Sing/signin_screen.dart';
import 'package:final_project/View/Sing/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../Guste/GuestAppLayout.dart';

class SignUpAndSignIn extends StatelessWidget {
  const SignUpAndSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "images/image.jpeg",
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            logoWithTitle(),
            Container(
              padding: EdgeInsetsDirectional.all(30),
              child: Column(
                children: [
                  filledButton(
                      title: "تسجيل الدخول",
                      radius: 5.0,
                      onPressed: () {
                        Get.to(SignInScreen());
                      }),
                  const SizedBox(
                    height: 30,
                  ),
                  filledButton(
                      title: "انشاء حساب جديد",
                      radius: 5.0,
                      onPressed: () {
                        Get.to(() => SignUpScreen());
                        
                      }),
                  const SizedBox(
                    height: 50,
                  ),
                         SizedBox(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 1,
                          width: 60,
                          color: primaryColor.withOpacity(0.6),
                        ),
                        Text(
                          "أو",
                          style: TextStyle(
                              color: primaryColor.withOpacity(0.6),
                              fontSize: 22),
                        ),
                        Container(
                          height: 1,
                          width: 60,
                          color: primaryColor.withOpacity(0.6),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                    CustomSlideButton(
                    slideIcon: "images/guste.png",
                    text: "مرحباً بك كضيف",
                    onSubmit: () {
                      Get.off(GuestAppLayout());
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
