import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/Component/custom%20article%20card.dart';
import 'package:final_project/Controller/Article%20Controller.dart';
import 'package:final_project/Controller/Profile%20controller.dart';
import 'package:get/get.dart';

class articleSystem {
  //HomePageController c_homePage = Get.put(HomePageController());

  // PostController c_post = Get.put(PostController());

  var instance = FirebaseFirestore.instance;
  createPost(
      {required Map<String, dynamic> articlData,
      Function(bool)? isDone}) async {
    var newArtile = await instance.collection("article").doc();

    articlData.addAll({"postUID": newArtile.id});
    await instance
        .collection("article")
        .doc(newArtile.id)
        .set(articlData)
        .then((value) {
      if (newArtile.id != null) {
        return isDone!(true);
      }
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
  }

  Future<Map<String, dynamic>> viewMyArticle({required String idUser}) async {
    Map<String, dynamic> e = {};
    try {
      var refdata = await instance.collection("article").doc(idUser).get();
      Map<String, dynamic> refDataMap = refdata.data() as Map<String, dynamic>;
      print(refDataMap);
      return refDataMap;
    } catch (error) {
      print(error.toString());
      return e;
    }
  }
  
}
