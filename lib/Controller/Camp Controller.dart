import 'package:final_project/Services/firebase/CampSystem.dart';
import 'package:final_project/Services/firebase/articleSystem.dart';
import 'package:final_project/View/app_layout.dart';
import 'package:get/get.dart';

class CampController extends GetxController {
  String authName = "Mansour";
  String authUID = "12345";
  //var randomImage = Random().nextInt(10000);
  String title = "ttt";
  String postUID = "123";
  // String image = "";
  String body = "aTTT";
  String date = "2022/12/28";
  bool article = true;

  CampSystem newCamp = CampSystem();

  MethodCreatePost() async {
    // await newPost.createArticle(articlData: articlData)
    Map<String, dynamic> campInfo = {
      "authName": authName,
      "authUID": authUID,
      "title": title,
      "date": date,
      "article": article,
      "body": body
    };
    print(campInfo);
    await newCamp.createCamp(
      campData: campInfo,
      isDone: (Value) {
        if (Value) {
          Get.snackbar("Success", "Camp had been added");
          Get.off(AppLayout());
        }
      },
    );
  }
}
