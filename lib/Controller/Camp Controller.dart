import 'package:final_project/Component/campComponent/CardCamp.dart';
import 'package:final_project/Services/firebase/CampSystem.dart';
import 'package:final_project/Services/firebase/articleSystem.dart';
import 'package:final_project/View/Admin/AdminAppLayout.dart';
import 'package:final_project/View/app_layout.dart';
import 'package:get/get.dart';

class CampController extends GetxController {
  // String authName = "Mansour";
  // String authUID = "12345";
  //var randomImage = Random().nextInt(10000);
  String NameOfCamp = "";
  String postUID = "";
  String image = "images/BackGround/Flutter_Logo.png";
  String NamberOfStudent = "25";
  String detailsOfCamp = "";
  String campGols = "";
  String date = "2022/12/28";
  //bool article = true;

  CampSystem newCamp = CampSystem();

  List campList = [];

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    campList = await newCamp.viewAllCamp();
    futchShowCamp();
    update();
  }

  futchShowCamp() async {
    try {
      var refData = await newCamp.viewAllCamp();
      //print(refData);
      CardCamp(
        DateOfCamp: refData["date"],
        Img: refData["image"],
        NamberOfStudent: refData["NamberOfStudent"],
        NameOfCamp: refData["NameOfCamp"],
        detailsOfCamp: refData["detailsOfCamp"],

      );

      update();
    } catch (e) {
      print(e);
      //Get.snackbar("Wrong", "try agine");
    }
  }

  MethodCreatePost() async {
    // await newPost.createArticle(articlData: articlData)
    Map<String, dynamic> campInfo = {
      "NameOfCamp": NameOfCamp,
      "date": date,
      "detailsOfCamp": detailsOfCamp,
      "image": image,
      "NamberOfStudent": NamberOfStudent,
     "campGols":campGols

    };
    print(campInfo);
    await newCamp.createCamp(
      campData: campInfo,
      isDone: (Value) {
        if (Value) {
          Get.snackbar("Success", "Camp had been added");
          Get.off(AdminAppLayout());
        }
      },
    );
  }
}
