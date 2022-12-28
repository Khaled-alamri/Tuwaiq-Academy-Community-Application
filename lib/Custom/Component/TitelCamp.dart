import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key, required this.Title, required this.height1});
  final String Title;
  final double height1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height1,
      padding: EdgeInsetsDirectional.only(bottom: 10),
      width: double.infinity,
      color: HexColor("#d4c7de"),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          Title,
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

class CustomTitleWithRadius extends StatelessWidget {
  const CustomTitleWithRadius(
      {super.key,
      required this.Title,
      required this.height1,
      this.BorderRadiusC});
  final String Title;
  final double height1;
  final double? BorderRadiusC;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height1,
      padding: EdgeInsetsDirectional.only(bottom: 10),
      width: Get.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular(60)),
          color: HexColor("#d4c7de")),
      child: Column(
        children: [
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 50,right: 30),
                child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: ImageIcon(
                      AssetImage("images/ion_chevron-back-circle-outline.png"),
                      size: 50,
                    )),
              )),
          Text(
            Title,
            style: TextStyle(
              color: HexColor("#423d62"),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
