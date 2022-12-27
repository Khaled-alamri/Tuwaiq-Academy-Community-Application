import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(
        top: 20,
        bottom: 20,
      ),
      width: double.infinity,
      height: 0.8,
      color: Color.fromARGB(255, 195, 195, 195),
    );
  }
}