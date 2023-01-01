import 'package:cloud_firestore/cloud_firestore.dart';

class CampSystem {
  //HomePageController c_homePage = Get.put(HomePageController());

  // PostController c_post = Get.put(PostController());

  var instance = FirebaseFirestore.instance;
  createCamp(
      {required Map<String, dynamic> campData, Function(bool)? isDone}) async {
    print("CampSystem");
    print(campData);
    var newArtile = await instance.collection("Camp").doc();

    campData.addAll({"postUID": newArtile.id});
    await instance
        .collection("Camp")
        .doc(newArtile.id)
        .set(campData)
        .then((value) {
      if (newArtile != null) {
        return isDone!(true);
      }
    });
  }

  viewAllCamp() async {
    try {
      List<Map<String, dynamic>> allCamp = [];
      var refdata = await instance.collection("Camp").get();
      for (var Camp in refdata.docs) {
        Camp.data();
        allCamp.add(Camp.data());
      }

      return allCamp;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
