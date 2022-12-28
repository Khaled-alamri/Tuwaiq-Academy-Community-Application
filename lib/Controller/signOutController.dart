import 'package:final_project/Packages/package.dart';
import 'package:final_project/Services/firebase/Auth/EmailAndPassword.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignOutController extends GetxController {
  AuthFirebase Auth = AuthFirebase();

  signingOut() async {
    Get.off(SignUpAndSignIn())!.then((value) {
      return Auth.signOut();
    });
  }
}
