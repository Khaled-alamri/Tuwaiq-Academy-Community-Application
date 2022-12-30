import 'package:final_project/Packages/package.dart';
import 'package:final_project/Services/firebase/Auth/EmailAndPassword.dart';
import 'package:get/get.dart';

class anonmenceController extends GetxController {
  AuthFirebase authObjects = AuthFirebase();

  anonmenceMethod() {
    authObjects.anonymouslyLogin(
      isDone: (Value) {
        if (Value) {
          Get.off(GuestAppLayout());
        }
      },
    );
  }
}
