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
              image: AssetImage("images/flutter210update_Dashlaptop_wText 1.png"),
              fit: BoxFit.cover)),
    );
  }
}
