import 'package:final_project/Services/firebase/articleSystem.dart';
import 'package:get/get.dart';

class ArticleController extends GetxController {
  String authName = "";
  String authUID = "";
  String postUID = "";
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
      "postUID": postUID,
      "title": title,
      "image": image,
      "date": date,
      "article": article,
      "commentCount": commentCount,
      "likeCount": likeCount
    };
  }
}
