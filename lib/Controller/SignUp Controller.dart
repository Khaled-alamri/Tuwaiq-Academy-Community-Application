import 'package:final_project/Services/firebase/Auth/EmailAndPassword.dart';
import 'package:final_project/Services/firebase/UserProfile.dart';
import 'package:final_project/View/Sing/signin_screen.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  String firstName = "";
  String lastName = "";
  String userID = "";
  String email = "";
  String phone = "";
  String uid = "";
  bool verify = false;
  String password = "";
  String image = "";

  AuthFirebase authFirebase = AuthFirebase();
  FireStore fireSore = FireStore();

  MethodSingUp() async {
    await authFirebase.createAccount(
      email: email,
      password: password,
      isDone: (Value) {
        Map<String, dynamic> user = {
          "email": email,
          "firstName": firstName,
          "lastName": lastName,
          "verify": verify,
          "phone": phone,
          "uid": Value,
          "image": image,
          "userID": userID
        };
        fireSore.SendDataUser(idUser: Value, infoUser: user);
        Get.offAll(SignInScreen());
      },
    );
  }
}
