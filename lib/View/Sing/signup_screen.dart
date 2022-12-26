import 'package:final_project/Component/CustomButton.dart';
import 'package:final_project/Component/CustomTextField.dart';
import 'package:final_project/Component/SingComponenr/logoWithTitle.dart';
import 'package:final_project/Controller/SignUp%20Controller.dart';
import 'package:final_project/Services/firebase/Auth/EmailAndPassword.dart';
import 'package:final_project/View/Sing/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class SignUpScreen extends StatelessWidget {
  SignUpController c_SignUp = Get.put(SignUpController());

  

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
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextField(
                                onChanged: (Value) =>
                                    c_SignUp.firstName = Value,
                                labelTextShow: "الاسم الأول",
                                hintTextShow: "",
                                IconForText: Icons.edit,
                              ),
                            ),
                            const SizedBox(
                              width: 30.0,
                            ),
                            Expanded(
                              child: CustomTextField(
                                onChanged: (Value) => c_SignUp.lastName = Value,
                                labelTextShow: "الاسم الأخير",
                                hintTextShow: "",
                                IconForText: Icons.edit,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        CustomTextField(
                          onChanged: (Value) => c_SignUp.userID = Value,
                          labelTextShow: "بطاقة التعريف",
                          hintTextShow: "",
                          IconForText: Icons.numbers,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        CustomTextField(
                          onChanged: (Value) => c_SignUp.email = Value,
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
                          onChanged: (Value) => c_SignUp.password = Value,
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
                              c_SignUp.MethodSingUp();
                              //Get.to(SignInScreen());
                            }),
                        const SizedBox(
                          height: 15.0,
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
