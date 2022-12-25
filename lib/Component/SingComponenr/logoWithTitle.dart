import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget logoWithTitle() {
  return Container(
    padding: EdgeInsetsDirectional.all(10),
    decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.only(
          bottomEnd: Radius.circular(15),
          bottomStart: Radius.circular(15),
        ),
        color: Color.fromARGB(69, 0, 0, 0)),
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
              color: HexColor("#7660A9"),
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        Text(
          "اكاديمية طويق",
          style: TextStyle(color: HexColor("#058378"), fontSize: 22),
        ),
      ],
    ),
  );
}