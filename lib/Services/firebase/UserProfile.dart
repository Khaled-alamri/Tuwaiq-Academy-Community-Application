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
  }

  Future<Map<String, dynamic>> getDataProfile({required String idUser}) async {
    Map<String, dynamic> h ={};
    try {
      List<Map<String, dynamic>> allusers = [];
      var refdata = await instance.collection("student").doc(idUser).get();
      Map<String, dynamic> refdataf = refdata.data() as Map<String, dynamic>;
      return refdataf;
    } catch (error) {
      print(error.toString());
      return h;
    }
  }
}
