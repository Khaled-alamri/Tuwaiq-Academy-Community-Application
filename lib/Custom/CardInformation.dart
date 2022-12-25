import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardInformation extends StatelessWidget {
  CardInformation({
    super.key,
    required this.description,
    required this.descriptionTitle,
  });

  String description;
  String descriptionTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      padding: EdgeInsets.all(15),
      width: Get.width,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadiusDirectional.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(descriptionTitle,
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              textDirection: TextDirection.rtl),
          Text(
            description,
            textDirection: TextDirection.rtl,
          ),
        ],
      ),
    );
  }
}
