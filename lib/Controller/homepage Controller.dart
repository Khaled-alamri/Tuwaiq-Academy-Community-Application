import 'package:final_project/Component/custom%20article%20card.dart';
import 'package:final_project/Services/firebase/Auth/EmailAndPassword.dart';
import 'package:final_project/Services/firebase/articleSystem.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  String authName = "";
  String title = "";
  String body = "";
  int commentCount = 0;
  int likeCount = 0;
  String date = "";

  // CustomArticleCard articleCard = CustomArticleCard(PostBody: body,PostOwnrName: authName,);
  articleSystem article = articleSystem();
  List articleList = [];

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    articleList = await article.viewAllArticle();
    print(articleList);
    update();
  }

  futchShowArticle() async {
    try {
      var refData = await article.viewAllArticle();

      // authName = refData["auth Name"];
      // title = refData["title"];
      // body = refData["body"];
      // commentCount = refData["commentCount"];
      // likeCount = refData["likeCount"];
      // date = refData["date"];
      //authName = refData["auth Name"];
      CustomArticleCard(
        PostBody: refData["body"],
        PostOwnrName: "auth Name",
        cardDate: refData["date"],
        commentCont: refData["commentCount"],
        likeCont: refData["likeCount"],
        postTitle: refData["title"],
      );
     

      update();
    } catch (e) {
      print(e);
    }
  }
}
