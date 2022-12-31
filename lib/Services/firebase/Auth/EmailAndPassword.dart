import 'package:final_project/Packages/package.dart';
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
        user.user!.sendEmailVerification();

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
      Function(bool login,String uid)? isDone}) async {
    try {
      var user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      if (user.user!.uid != null) {
        // GetStorage().write("userID", user.user!.uid);
        // print(GetStorage().toString());
       
        isDone!(true,user.user!.uid );

        //print(user.user!.uid);
        //Get.to(() => AppLayout());
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Get.snackbar("wrong", "No user found for that email.");
        //print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        Get.snackbar("wrong", "Wrong password provided for that user.");
        // print('Wrong password provided for that user.');
      }
    }
  }

  checkUser() async {
    try {
      var user = instance.currentUser?.uid;
      return user.toString();
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "operation-not-allowed":
          print("Anonymous auth hasn't been enabled for this project.");
          break;
        default:
          print("Unknown error.");
      }
    } catch (e) {
      Get.snackbar("Error", "Somethin happend");
    }
  }

  signOut() async {
    await FirebaseAuth.instance.signOut().then((value) {
      print("signOut");
      //Get.off(SignUpAndSignIn());
    });
  }

  forgetPassword({required String email, Function(bool)? isDone}) async {
    try {
      await instance.sendPasswordResetEmail(email: email).then((value) {
        return isDone!(true);
      });
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  anonymouslyLogin({Function(bool)? isDone}) async {
    try {
      var auth = FirebaseAuth.instance;
      var user = await auth.signInAnonymously().then((value) {
        return isDone!(true);
      });
      print("Users Sign in ");
      print(user.user?.uid.toString());
    } catch (error) {
      print(error);
    }
  }
}
