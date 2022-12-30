import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  List searchResult = [];

  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  searchFromeFirbase(String query) async {
    var result = await FirebaseFirestore.instance
        .collection("article")
        .where(
          "title",
          isEqualTo: query,
        )
        .get();

    searchResult = result.docs.map((e) => e.data()).toList();
    update();
  }
}