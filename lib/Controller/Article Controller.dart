import 'dart:math';

import 'package:final_project/Controller/Profile%20controller.dart';
import 'package:final_project/Packages/package.dart';
import 'package:final_project/Services/firebase/articleSystem.dart';
import 'package:get/get.dart';

class PostController extends GetxController {
  String authName = "";
  String authUID = "";
  var randomImage = Random().nextInt(10000);
  String title = "";
  String postUID = "";
  String image = "";
  String body = "";
  String date = "";
  bool article = true;
  int commentCount = 0;
  int likeCount = 0;
  articleSystem newPost = articleSystem();
  profileController C_Profile = Get.find();

  MethodCreatePost() async {
    // await newPost.createArticle(articlData: articlData)
    Map<String, dynamic> articleInfo = {
      "authName":C_Profile.firstName+" " +C_Profile.lastName,
      "authUID": C_Profile.uid,
      "title": title,
      "image": image,
      "date": date,
      "article": article,
      "commentCount": commentCount,
      "likeCount": likeCount,
      "body": body,
      "authImage": C_Profile.image1,
    };
    await newPost.createPost(
      articlData: articleInfo,
      isDone: (Value) {},
    );
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    C_Profile.profileData();
    C_Profile.firstName;
    print(C_Profile.firstName);
  }
}
