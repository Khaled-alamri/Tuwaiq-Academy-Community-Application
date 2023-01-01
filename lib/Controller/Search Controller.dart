import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  Future getData(String collection) async {
    final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    QuerySnapshot snapshot =
        await firebaseFirestore.collection(collection).get();
    return snapshot.docs;
  }

  Future queryData({ required String queryData}) async {
    return FirebaseFirestore.instance
        .collection("article")
        .where('title', isGreaterThanOrEqualTo: queryData)
        .get();
  }
}
