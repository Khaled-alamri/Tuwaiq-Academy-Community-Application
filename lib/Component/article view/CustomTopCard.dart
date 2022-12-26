import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TopCard extends StatelessWidget {
  const TopCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.all(10),
      padding: EdgeInsetsDirectional.all(20),
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10),
          color: HexColor("#dbd9de"),
          image: DecorationImage(
              image: AssetImage("assets/images/image.jpeg"),
              fit: BoxFit.cover)),
    );
  }
}
