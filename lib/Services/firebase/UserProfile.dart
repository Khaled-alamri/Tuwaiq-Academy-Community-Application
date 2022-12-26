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

  // createUserProfile(
  //     {required String id,
  //     required String firstName,
  //     required String lastName,
  //     required String email,
  //     required String userUID}) async {
  //   bool verify = false;

  //   String phone = "";

  //   await instance.collection("student").doc(userUID).set({
  //     "id": id,
  //     "first name": firstName,
  //     "last name": lastName,
  //     "email": email,
  //     "userUID": userUID,
  //     "verify": verify,
  //     "phone": phone,
  //   });
  // }
}
