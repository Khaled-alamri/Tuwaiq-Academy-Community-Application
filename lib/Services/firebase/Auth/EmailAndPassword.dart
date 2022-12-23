import 'package:final_project/Router/Routers.dart';
import 'package:final_project/Services/firebase/UserProfile.dart';
import 'package:final_project/View/Sing/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';

var instance = FirebaseAuth.instance;

createAccount(
    {required String email,
    required String password,
    required String id,
    required String firstName,
    required String lastName}) async {
  try {
    final user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    //RouterNames.SignUpAndSignIn;
    if (user.user?.uid != null) {
      createUserProfile(
          id: id, firstName: firstName, lastName: lastName, email: email);
      Get.off(() => SignInScreen());
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

signInWithEmail({required String email, required String password}) async {
  try {
    var user = await instance.signInWithEmailAndPassword(
        email: email, password: password);

    if (user.user?.uid != null) {
      //Get.to(() => HomeScreen());
      print("i am loging in");
    }
  } on FirebaseAuthException catch (error) {
    Get.snackbar("wrong", "${error.code}");
    //print(error.code);
    if (error.code == "wrong-password") {
      Get.snackbar("wrong", "Email or password is wrong");
    } else if (error.code == "network-request-failed") {
      Get.snackbar("wrong", "check your connections");
    }
  }
}
