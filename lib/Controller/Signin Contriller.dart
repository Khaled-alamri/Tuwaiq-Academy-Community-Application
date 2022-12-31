import 'package:final_project/Services/firebase/Auth/EmailAndPassword.dart';
import 'package:final_project/Services/firebase/UserProfile.dart';
import 'package:final_project/View/Admin/AdminAppLayout.dart';
import 'package:final_project/View/app_layout.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  String email = "";
  String password = "";

  AuthFirebase authObjects = AuthFirebase();
  FireStore fireStore = FireStore();

  loginMethod() {
    try {
      authObjects.signInWithEmail(
        email: email,
        password: password,
        isDone: (Value, uid) {
          if (Value) {
            if (uid == "L24iwT3szpNrto63g5UyqsyUtNh1") {
              Get.off(AdminAppLayout());
            } else {
              Get.off(AppLayout());
            }
          }
        },
      );
    } catch (e) {
      Get.snackbar("Erorr", "something happened");
      print(e);
    }
  }
}
