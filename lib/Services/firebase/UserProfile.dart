import 'package:cloud_firestore/cloud_firestore.dart';

var instance = FirebaseFirestore.instance;

createUserProfile(
    {required String id,
    required String firstName,
    required String lastName,required String email}) async {
  List<String> achievement = [""];
  List<String> published = [""];
  
  bool verify = false;

  String phone = "";

  await instance.collection("student").doc().set({
    "id": id,
    "first name": firstName,
    "last name": lastName,
    "email":email,

    "verify": verify,
    "phone": phone,
    "achievement": achievement,
    "published": published
  });
}
