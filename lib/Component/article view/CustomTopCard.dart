import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TopCard extends StatelessWidget {
   TopCard({Key? key,
   required this.imagePQ
   }) : super(key: key);

  String imagePQ;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.all(10),
      padding: EdgeInsetsDirectional.all(20),
      height: 200,
     color: Colors.white,
              child: Image.network(imagePQ,fit:BoxFit.fill,),
    );
  }
}
