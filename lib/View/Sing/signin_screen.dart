import 'package:final_project/Component/CustomButton.dart';
import 'package:final_project/Component/CustomTextField.dart';
import 'package:final_project/Component/SingComponenr/logoWithTitle.dart';
import 'package:final_project/Services/firebase/Auth/EmailAndPassword.dart';
import 'package:final_project/View/Sing/Forge_Password_or_Chang.dart';
import 'package:final_project/View/Sing/signup_screen.dart';
import 'package:final_project/View/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class SignInScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  logoWithTitle(),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.all(20),
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: emailController,
                          hintTextShow: "example@example.com",
                          labelTextShow: "البريد الإلكتروني",
                          validaterMasseg: 'من فضلك ادخل الايميل',
                          keyboardType: TextInputType.emailAddress,
                          IconForText: Icons.email,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        CustomTextField(
                          controller: passwordController,
                          hintTextShow: "*******",
                          labelTextShow: "كلمة المرور",
                          validaterMasseg: 'من فضلك ادخل الباسورد',
                          keyboardType: TextInputType.visiblePassword,
                          IconForText: Icons.lock_outline,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        filledButton(
                            title: "تسجيل الدخول",
                            radius: 5.0,
                            onPressed: () {
                           AuthFirebase().signInWithEmail(
                                  email: emailController.text,
                                  password: passwordController.text);
                              Get.to(AppLayout());
                            }),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Get.to(ForgePassword());
                                },
                                child: Text(
                                  "هل نسيت كلمة المرور؟",
                                  style: TextStyle(
                                      color: HexColor("#7660A9"),
                                      fontWeight: FontWeight.bold),
                                )),
                            TextButton(
                                onPressed: () {
                                  Get.to(SignUpScreen());
                                },
                                child: Text(
                                  "تسجيل جديد",
                                  style: TextStyle(
                                      color: HexColor("#7660A9"),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.0),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
