import 'dart:io';
import 'dart:math';

import 'package:final_project/Controller/Profile%20controller.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

String getimage = "";

class Avter extends StatelessWidget {
  Avter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        getimage = profileController1().addImagesProfile();
        print(getimage);
      },
      child: CircleAvatar(
        backgroundColor: Color(0xff4A3A75),
        radius: 80,
        child: ClipOval(
          child: getimage == ""
              ? Icon(
                  Icons.person,
                  size: 80,
                )
              : Image.network(getimage, width: 150,
    height: 150,
    fit: BoxFit.cover,),
        ),
      ),
    );
  }
}

class Avter1 extends StatelessWidget {
  Avter1({super.key});



  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Color(0xff4A3A75),
      radius: 80,
      child: ClipOval(
        child: getimage == ""
            ? Icon(
                Icons.person,
                size: 80,
              )
            : Image.network(getimage, width: 150,
    height: 150,
    fit: BoxFit.cover,),
      ),
    );
  }
}

class profileController1 extends GetxController {
  addImagesProfile() async {
    String k;
    var instance = FirebaseStorage.instance;
    try {
      var image = await ImagePicker().pickImage(source: ImageSource.gallery);

      Reference ref =
          await instance.ref().child("Profile/${generateRandomString(10)}.png");
      await ref.putFile(File(image!.path));
      await ref.getDownloadURL().then((value) {
        getimage = value;
        print(getimage);
      });
      update();
    } catch (e) {
      print('Failed to pick image: $e');
    }
  }
}

String generateRandomString(int length) {
  final random = Random();
  const availableChars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  final randomString = List.generate(length,
      (index) => availableChars[random.nextInt(availableChars.length)]).join();

  return randomString;
}
