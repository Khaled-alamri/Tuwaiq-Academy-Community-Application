import 'dart:io';

import 'package:final_project/Controller/Article%20Controller.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

class GetImage{
  PostController ArticleControllerImage = Get.put(PostController());
  var instance = FirebaseStorage.instance;
  AddImages({required File Image}) async {
    try {
      final file = Image;
      final ref =
      await instance.ref().child("images/${ArticleControllerImage.randomImage}.png");
      await ref.putFile(file);
      return ArticleControllerImage.image = file.toString();
    } catch (e) {
      print(e);
    }
  }
}

getImages({required String postUID}) async {
  try {
    var ref = await FirebaseStorage.instance.ref("images").list();
    ref.items.forEach((element) {
      if (element.name == postUID + ".png") {
        print(element.name);
      }
    });
  } catch (e) {
    print(e);
  }
}
