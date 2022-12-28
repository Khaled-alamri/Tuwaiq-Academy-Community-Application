import 'dart:io';
import 'dart:math';

import 'package:final_project/Packages/package.dart';
import 'package:final_project/Services/firebase/Auth/EmailAndPassword.dart';
import 'package:final_project/Services/firebase/UserProfile.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class profileController extends GetxController {
  String email = "";
  String phone = "";
  String firstName = "";
  String lastName = "";
  String image = "";

  AuthFirebase authFire = AuthFirebase();
  FireStore userProfile = FireStore();

  futchMyInfo() async {
    Map<String, dynamic> newDat = {
      "email": email,
      "phone": phone,
      "firstName": firstName,
      "lastName": lastName,
      "image": image,
    };
    var curentUser = await authFire.checkUser();
    userProfile.SendDataUser(idUser: curentUser, infoUser: newDat);
    update();
  }

  addImagesProfile() async {
    var instance = FirebaseStorage.instance;
    try {
      var image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return null;
      Reference ref =
          await instance.ref().child("Profile/${generateRandomString(10)}.png");
      await ref.putFile(File(image.path));
      ref
          .getDownloadURL()
          .then((value) => {print("here is value and images  $value")});
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
