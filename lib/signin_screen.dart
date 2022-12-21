import 'package:final_project/Component/test.dart';
import 'package:final_project/components.dart';
import 'package:final_project/signup_screen.dart';
import 'package:final_project/widgets/default_form_field.dart';
import 'package:flutter/material.dart';
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
                        // DefaultFormField(
                        //   controller: emailController,
                        //   type: TextInputType.emailAddress,
                        //   hintText: "example@example.com",
                        //   label: "البريد الإلكتروني",
                        //   borderColor: Colors.white,
                        //   prefix: Icons.email,
                        //   fillColor: Color.fromARGB(153, 255, 255, 255),
                        //   prefixColorIcon: HexColor("#7660A9"),
                        //   labelColor: HexColor("#7660A9"),
                        //   validate: (String? value) {
                        //     if (value!.isEmpty) {
                        //       return 'من فضلك ادخل الايميل';
                        //     }
                        //   },
                        // ),

                        //00000000000000000000000///
                        
                        //here is the component
                        CustomTextField(
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
                          hintTextShow: "*******",
                          labelTextShow: "كلمة المرور",
                          validaterMasseg: 'من فضلك ادخل الباسورد',
                          keyboardType: TextInputType.visiblePassword,
                          IconForText: Icons.lock_outline,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        filledButton(title: "تسجيل الدخول", radius: 5.0),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "هل نسيت كلمة المرور؟",
                                  style: TextStyle(
                                      color: HexColor("#7660A9"),
                                      fontWeight: FontWeight.bold),
                                )),
                            TextButton(
                                onPressed: () {
                                  navigateTo(context, SignUpScreen());
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
