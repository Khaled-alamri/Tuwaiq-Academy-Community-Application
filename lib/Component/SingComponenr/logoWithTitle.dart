import 'package:final_project/Style/Style.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget logoWithTitle() {
  return SafeArea(
    child: Container(
      padding: EdgeInsetsDirectional.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.only(
            bottomEnd: Radius.circular(15),
            bottomStart: Radius.circular(15),
          ),
          color: Color(0xFF0C0B0B).withOpacity(0.1)),
      child: Column(
        children: [
          Image.asset(
            "images/tw.png",
            width: 150,
            height: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "مجتمع",
            style: TextStyle(
                color: primaryColor.withOpacity(0.8),
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "اكاديمية طويق",
            style: TextStyle(
              color:slidAndfloatColor , fontSize: 22),
          ),
        ],
      ),
    ),
  );
}