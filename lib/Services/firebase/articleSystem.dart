import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/Component/custom%20article%20card.dart';
import 'package:final_project/Controller/homepage%20Controller.dart';
import 'package:get/get.dart';

class articleSystem {
  // HomePageController c_homePage = Get.put(HomePageController());

  var instance = FirebaseFirestore.instance;
  createArticle(
      {required String title,
      required String body,
      required String date}) async {
    //String title;
    ;
    int commentCount = 0;
    int likeCount = 0;
    //String date;

    await instance.collection("article").doc().set({
      "auth name"
          "title": title,
      "body": body,
      "commentCount": commentCount,
      "date": date,
      "likeCount": likeCount
    });
  }

  viewAllArticle() async {
    try {
      List<Map<String, dynamic>> allArticle = [];
      var refdata = await instance.collection("article").get();
      for (var articl in refdata.docs) {
        articl.data();
        allArticle.add(articl.data());
      }

      return allArticle;
    } catch (error) {
      print(error.toString());
      return null;
    }

    // print(articleInfo.data());
    // print(articleInfo.data()!["auth Name"]);

    // if (articleInfo.data() != null) {
    // CustomArticleCard(
    //   PostOwnrName: articleInfo.data()!["auth Name"],
    //   PostBody: articleInfo.data()!["body"],
    //   postTitle: articleInfo.data()!["title"],
    //   commentCont: articleInfo.data()!["commentCount"],
    //   likeCont: articleInfo.data()!["likeCount"],
    //   cardDate: articleInfo.data()!["date"],
    // );
    //}
  }
}
