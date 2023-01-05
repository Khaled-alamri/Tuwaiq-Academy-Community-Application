import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/Controller/Profile%20controller.dart';
import 'package:final_project/Packages/package.dart';
import 'package:final_project/Services/firebase/Comments.dart';

class Comments extends GetxController {
  String CommentsPost = "";
  String postUID="";
  profileController C_Profile = Get.find();
  Comment Commentpostes = Comment();
  MethodCreateComments() async {
    Map<String, dynamic> CommentsInfo = {
      "authUID": C_Profile.uid,
      "authName": C_Profile.firstName + " " + C_Profile.lastName,
      "authImage": C_Profile.image1,
      "Comments": CommentsPost,
      "postUID":postUID
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
}
