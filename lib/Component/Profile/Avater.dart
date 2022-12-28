import 'dart:io';
import 'dart:math';

import 'package:final_project/Controller/Profile%20controller.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Avter extends StatelessWidget {
  Avter({super.key});
//  final Function(String)? ontap;
  profileController C_Profile = Get.find();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        C_Profile.addImagesProfile();
      },
      child: CircleAvatar(
        backgroundColor: Color(0xff4A3A75),
        radius: 80,
        child: ClipOval(
          child: C_Profile.image1 == ""
              ? Icon(
                  Icons.person,
                  size: 80,
                )
              : Image.network(
                  C_Profile.image1,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
        ),
      ),
    );
  }
}

class Avter1 extends StatelessWidget {
  
  Avter1({super.key});
profileController C_Profile = Get.find();
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Color(0xff4A3A75),
      radius: 80,
      child: ClipOval(
        child: C_Profile.image1 == ""
            ? Icon(
                Icons.person,
                size: 80,
              )
            : Image.network(
                C_Profile.image1,
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
