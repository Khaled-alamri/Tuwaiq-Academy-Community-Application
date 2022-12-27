import 'dart:math';

import 'package:final_project/Services/firebase/articleSystem.dart';
import 'package:get/get.dart';
class PostController extends GetxController {
  String authName = "";
  String authUID = "";
var randomImage = Random().nextInt(10000); // Value is >= 0 and < 10.
  String title = "";
  String image = "";
  String body = "";
  String date = "";
  bool article = true;
  int commentCount = 0;
  int likeCount = 0;
  articleSystem newPost = articleSystem();


  MethodCreatePost() async {
    // await newPost.createArticle(articlData: articlData)
    Map<String, dynamic> articleInfo = {
      "authName": authName,
      "authUID": authUID,
      "title": title,
      "image": image,
      "date": date,
      "article": article,
      "commentCount": commentCount,
      "likeCount": likeCount
    };
    await newPost.createPost(articlData: articleInfo,isDone: (Value) {
      
    },);
  }
}
