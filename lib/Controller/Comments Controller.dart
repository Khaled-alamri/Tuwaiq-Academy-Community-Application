import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/Controller/Profile%20controller.dart';
import 'package:final_project/Packages/package.dart';
import 'package:final_project/Services/firebase/Comments.dart';
import 'package:final_project/Services/firebase/articleSystem.dart';

class CommentsController extends GetxController {
  var instance = FirebaseFirestore.instance;
  String CommentsPost = "";
  String postUID = "";
  profileController C_Profile = Get.find();
  articleSystem Commentpostes = articleSystem();


  MethodCreateComments() async {
    Map<String, dynamic> CommentsInfo = {
      "authUID": C_Profile.uid,
      "authName": C_Profile.firstName + " " + C_Profile.lastName,
      "authImage": C_Profile.image1,
      "Comments": CommentsPost,
      "postUID": postUID
    };

    await Commentpostes.addComments(
      commentsData: CommentsInfo,
      isDone: (Value) {
        if (Value) {
          Get.snackbar(
              animationDuration: Duration(seconds: 2),
              "تم إضافة تعليق \u270C",
              "");

        }
      },
    );
  }

  List<Map<String, dynamic>> allArticle = [];
  viewAllComments() async {
    try {
      var refdata = await instance.collection("Comments").get();
      for (var articl in refdata.docs) {
        articl.data();
        allArticle.add(articl.data());
      }
      print(allArticle);
      return allArticle;
    } catch (error) {
      print(error.toString());
    }
  }

  
}
