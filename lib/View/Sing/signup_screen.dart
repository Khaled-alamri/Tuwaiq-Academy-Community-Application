
import 'package:final_project/Component/CustomButton.dart';
import 'package:final_project/Component/CustomTextField.dart';
import 'package:final_project/Component/SingComponenr/logoWithTitle.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class SignUpScreen extends StatelessWidget {
  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var identitfyController = TextEditingController();
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
                        Row(
                          children: [
                            Expanded(
                              child: CustomTextField(
                          controller: firstNameController,
                          labelTextShow: "الاسم الأول",
                          hintTextShow: "",
                          IconForText:Icons.edit ,
                        ),
                              
                            ),
                             
                            const SizedBox(
                              width: 30.0,
                            ),
                            Expanded(
                              child: CustomTextField(
                          controller: lastNameController,
                          labelTextShow:  "الاسم الأخير",
                          hintTextShow: "",
                          IconForText:Icons.edit ,
                        ),
                            ),
                            
                          ],
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        CustomTextField(
                          controller: identitfyController,
                          labelTextShow: "بطاقة التعريف",
                          hintTextShow: "",
                          IconForText:Icons.numbers ,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        
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
