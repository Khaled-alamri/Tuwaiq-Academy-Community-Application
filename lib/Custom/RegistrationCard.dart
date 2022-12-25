
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationCard extends StatelessWidget {
   RegistrationCard({
    super.key,
    required this.descriptionRegistration,
    required this.iconImage,
    required this.iconColor
  });

 String descriptionRegistration;
 String iconImage;
 Color iconColor;

   //This Registration Card dosnt belong to the Information Card
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: Get.width,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadiusDirectional.circular(8)),
          margin: EdgeInsets.only(top: 50),
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(descriptionRegistration),
              IconButton(
                onPressed: () {
                  //we can use package for link called URL 
                print("Registration Linke");
              }, icon: ImageIcon(AssetImage(iconImage), size: 30, color:iconColor ,))
            ],
          ),
        ));
  }
}
