import 'package:final_project/Services/firebase/Auth/EmailAndPassword.dart';
import 'package:final_project/Services/firebase/UserProfile.dart';
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
        isDone: (Value) {
          if (Value) {
            
              print("aaaa");
            Get.to(AppLayout());
          }
        },
      );
    } catch (e) {
      Get.snackbar("Erorr", "something happened");
      print(e);
    }
  }
}
