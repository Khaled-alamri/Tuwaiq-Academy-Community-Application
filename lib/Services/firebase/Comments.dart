import 'package:cloud_firestore/cloud_firestore.dart';

class Comment {
  var instance = FirebaseFirestore.instance;
  addComments(
      {required Map<String, dynamic> commentsData,
      Function(bool)? isDone}) async {
    var newComments = await instance.collection("Comments").doc();
     commentsData.addAll({"commentsData_UID": newComments.id});
    await instance.collection("Comments").doc(newComments.id).set(commentsData) .then((value) {
      if (newComments.id != null) {
        return isDone!(true);
      }
    });
  }
}
