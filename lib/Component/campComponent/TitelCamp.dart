import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 120,
                padding: EdgeInsetsDirectional.only(bottom: 10),
                width: double.infinity,
                color: HexColor("#d4c7de"),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "المعسكرات",
                    style: TextStyle(
                      color: HexColor("#423d62"),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
  }
}