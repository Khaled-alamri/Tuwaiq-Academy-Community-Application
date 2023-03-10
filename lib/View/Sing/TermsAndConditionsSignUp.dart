import 'package:final_project/Packages/package.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  @override
  bool isChecked = false;
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: "  أوافق علي",
              style: TextStyle(color: primaryColor, fontSize: 15)),
          TextSpan(
              text: "أحكام و شروط",
              style: const TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  decoration: TextDecoration.underline),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Get.toNamed(RouterNames.TermsAndCondition);
                }),
          TextSpan(text: " الاستخدام", style: TextStyle(color: primaryColor)),
        ])),
        Checkbox(
            side: BorderSide(color: primaryColor),
            activeColor: primaryColor,
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            }),
      ],
    );
  }
}
