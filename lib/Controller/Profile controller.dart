import 'package:final_project/Packages/package.dart';
import 'package:final_project/Services/firebase/Auth/EmailAndPassword.dart';
import 'package:final_project/Services/firebase/UserProfile.dart';

class profileController extends GetxController {
  String email = "";
  String phone = "";
  String firstName = "";
  String lastName = "";
  String image = "";

  AuthFirebase authFire = AuthFirebase();
  FireStore userProfile = FireStore();

  futchMyInfo() async {
    Map<String, dynamic> newDat = {
      "email": email,
      "phone": phone,
      "firstName": firstName,
      "lastName": lastName,
      "image": image,
    };
    var curentUser = await authFire.checkUser();
    userProfile.SendDataUser(idUser: curentUser, infoUser: newDat);
    update();
  }
}
