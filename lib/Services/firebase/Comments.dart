import 'package:cloud_firestore/cloud_firestore.dart';

class Comment {
  var instance = FirebaseFirestore.instance;
  addComments(
      {required Map<String, dynamic> commentsData,
      Function(bool)? isDone}) async {
    var newComments = await instance.collection("Comments").doc();
    await instance.collection("Comments").doc().set(commentsData);
  }
}
