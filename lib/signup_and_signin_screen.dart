import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_and_signup_ui/components.dart';
import 'package:login_and_signup_ui/signin_screen.dart';
import 'package:login_and_signup_ui/signup_screen.dart';

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
                "assets/images/image.jpeg",
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
                  filledButton(title: "تسجيل الدخول", radius: 5.0, onPressed: () {
                    navigateTo(context, SignInScreen());
                  }),
                  const SizedBox(
                    height: 30,
                  ),
                  filledButton(title: "انشاء حساب جديد", radius: 5.0,onPressed: () {
                    navigateTo(context, SignUpScreen());
                  }),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "-------------------- أو --------------------",
                    style: TextStyle(color: Colors.black, fontSize: 22),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.only(
                      start: 10,
                      end: 15,
                      top: 0,
                      bottom: 0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: HexColor("#078378"),
                    ),
                    
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsetsDirectional.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.person_add,
                            color: HexColor("#058378"),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: MaterialButton(
                              onPressed: () {},
                              child: Text(
                                "مرحبًا بك كضيف",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
