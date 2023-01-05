import 'package:flutter/material.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pinch_zoom/pinch_zoom.dart';

class TopCard extends StatelessWidget {
  TopCard({Key? key, required this.imagePQ}) : super(key: key);

  String imagePQ;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.all(10),
      padding: EdgeInsetsDirectional.all(20),
      height: 200,
      color: Colors.white,
      child: imagePQ == ""
          ? Image.asset("images/tw.png")
          : FullScreenWidget(
              child: PinchZoom(
              child: Image.network(imagePQ, fit: BoxFit.fill),
              resetDuration: const Duration(milliseconds: 100),
              maxScale: 2.5,
            )),
    );
  }
}
