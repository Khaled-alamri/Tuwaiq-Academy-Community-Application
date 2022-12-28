import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/Component/custom%20article%20card.dart';
import 'package:final_project/Controller/Article%20Controller.dart';
import 'package:get/get.dart';

class articleSystem {
  //HomePageController c_homePage = Get.put(HomePageController());

  // PostController c_post = Get.put(PostController());

  var instance = FirebaseFirestore.instance;
  createPost(
      {required Map<String, dynamic> articlData,
      Function(String)? isDone}) async {
    var newArtile = await instance.collection("article").doc();

     articlData.addAll({"postUID": newArtile.id});
    await instance.collection("article").doc(newArtile.id).set(articlData);
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
  }
}
