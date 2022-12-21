import 'package:final_project/components.dart';
import 'package:final_project/widgets/default_form_field.dart';
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
                              child: DefaultFormField(
                                controller: firstNameController,
                                type: TextInputType.text,
                                label: "الاسم الأول",
                                borderColor: Colors.white,
                                prefix: Icons.edit,
                                fillColor: Color.fromARGB(153, 255, 255, 255),
                                prefixColorIcon: HexColor("#7660A9"),
                                labelColor: HexColor("#7660A9"),
                                validate: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'من فضلك ادخل الاسم الاول';
                                  }
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 30.0,
                            ),
                            Expanded(
                              child: DefaultFormField(
                                controller: lastNameController,
                                type: TextInputType.text,
                                label: "الاسم الأخير",
                                borderColor: Colors.white,
                                prefix: Icons.edit,
                                fillColor: Color.fromARGB(153, 255, 255, 255),
                                prefixColorIcon: HexColor("#7660A9"),
                                labelColor: HexColor("#7660A9"),
                                validate: (String? value) {
                                  if (value!.isEmpty) {
                                    return 'من فضلك ادخل الاسم الأخير';
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        DefaultFormField(
                          controller: identitfyController,
                          type: TextInputType.text,
                          label: "بطاقة التعريف",
                          borderColor: Colors.white,
                          prefix: Icons.numbers,
                          fillColor: Color.fromARGB(153, 255, 255, 255),
                          prefixColorIcon: HexColor("#7660A9"),
                          labelColor: HexColor("#7660A9"),
                          validate: (String? value) {
                            if (value!.isEmpty) {
                              return 'من فضلك ادخل بطاقة التعريف';
                            }
                          },
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        DefaultFormField(
                          controller: emailController,
                          type: TextInputType.emailAddress,
                          hintText: "example@example.com",
                          label: "البريد الإلكتروني",
                          borderColor: Colors.white,
                          prefix: Icons.email,
                          fillColor: Color.fromARGB(153, 255, 255, 255),
                          prefixColorIcon: HexColor("#7660A9"),
                          labelColor: HexColor("#7660A9"),
                          validate: (String? value) {
                            if (value!.isEmpty) {
                              return 'من فضلك ادخل الايميل';
                            }
                          },
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        DefaultFormField(
                          controller: passwordController,
                          isPassword: true,
                          type: TextInputType.visiblePassword,
                          hintText: "*******",
                          label: "كلمة المرور",
                          borderColor: Colors.white,
                          prefix: Icons.lock_outline,
                          fillColor: Color.fromARGB(153, 255, 255, 255),
                          prefixColorIcon: HexColor("#7660A9"),
                          labelColor: HexColor("#7660A9"),
                          maxLines: 1,
                          isSuffix: true,
                          validate: (String? value) {
                            if (value!.isEmpty) {
                              return 'من فضلك ادخل الباسورد';
                            }
                          },
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
