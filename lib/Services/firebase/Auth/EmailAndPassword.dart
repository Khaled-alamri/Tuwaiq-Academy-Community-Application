import 'package:final_project/Router/Routers.dart';
import 'package:final_project/View/app_layout.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthFirebase {
  var instance = FirebaseAuth.instance;

  createAccount(
      {required String email,
      required String password,
      Function(String)? isDone}) async {
    try {
      final user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      //RouterNames.SignUpAndSignIn;
      if (user.user!.uid != null) {
        isDone!(user.user!.uid);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Get.snackbar("wrong", "The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
        Get.snackbar("wrong", "The account already exists for that email.");
      }
    } catch (e) {
      Get.snackbar("wrong", "something want wrong, Please try again");
    }
  }

  signInWithEmail(
      {required String email,
      required String password,
      Function(bool)? isDone}) async {
    try {
      var user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      if (user.user!.uid != null) {
       // GetStorage().write("userID", user.user!.uid);
       // print(GetStorage().toString());
        isDone!(true);
        Get.to(() => AppLayout());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
