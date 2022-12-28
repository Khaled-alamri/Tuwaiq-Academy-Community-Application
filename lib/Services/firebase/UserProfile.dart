import 'package:cloud_firestore/cloud_firestore.dart';

class FireStore {
  var instance = FirebaseFirestore.instance;
  SendDataUser(
      {required String idUser, required Map<String, dynamic> infoUser}) async {
    await instance
        .collection("student")
        .doc(idUser.toString())
        .get()
        .then((value) {
      if (value.exists) {
        instance.collection("student").doc(idUser.toString()).update(infoUser);
      } else {
        instance.collection("student").doc(idUser.toString()).set(infoUser);
      }
    });
     getDataProfile() async {
    try {
      List<Map<String, dynamic>> allArticle = [];
      var refdata = await instance.collection("student").get();
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
  }

