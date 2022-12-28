import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/Component/Profile/Avater.dart';
import 'package:final_project/Packages/package.dart';
import 'package:final_project/Services/firebase/Auth/EmailAndPassword.dart';
import 'package:final_project/Services/firebase/UserProfile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class profileController extends GetxController {
  String email = "";
  String phone = "";
  String firstName = "";
  String lastName = "";
  String image1 = "";

  AuthFirebase authFire = AuthFirebase();
  FireStore userProfile = FireStore();
  futchMyInfo() async {
    Map<String, dynamic> newDat = {
      "email": email,
      "phone": phone,
      "firstName": firstName,
      "lastName": lastName,
      "image": image1,
    };
    var curentUser = await authFire.checkUser();
    userProfile.SendDataUser(idUser: curentUser, infoUser: newDat);
    update();
  }

  profileData() async {
    var curentUser = await authFire.checkUser();
    Map<String, dynamic> userdata =
        await userProfile.getDataProfile(idUser: curentUser);
    firstName = userdata["firstName"];
    image1 = userdata["image"];
    lastName = userdata["lastName"];
    update();
  }

  addImagesProfile() async {
    var instance = FirebaseStorage.instance;
    try {
      var image = await ImagePicker().pickImage(source: ImageSource.gallery);

      Reference ref =
          await instance.ref().child("Profile/${generateRandomString(10)}.png");
      await ref.putFile(File(image!.path));
      await ref.getDownloadURL().then((value) async {
        var curentUser = await authFire.checkUser();
        image1 = value;
        userProfile.SendDataUser(
            idUser: curentUser, infoUser: {"image": value});
        print(image1);
        update();
      });
    } catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    profileData();
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
