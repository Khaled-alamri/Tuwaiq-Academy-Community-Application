import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

// Navigate component
void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
// Hi thois is test
Widget filledButton({title, onPressed, radius}) {
  return Center(
    child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 50.0),
        color: HexColor("#7660A9"),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
    ),
  );
}

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
          "images/logo.png",
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
