import 'package:final_project/Component/Custom%20Question%20card.dart';
import 'package:final_project/Component/CustomTextView.dart';
import 'package:final_project/Component/custom%20article%20card.dart';
import 'package:final_project/Controller/homepage%20Controller.dart';
import 'package:final_project/Custom/CustomAppBarWithOutPic.dart';
import 'package:final_project/View/Home/QuestionPage.dart';
import 'package:final_project/View/article/problem_screen.dart';
import '../../Packages/package.dart';

class GuestHomeScreen extends StatelessWidget {
  GuestHomeScreen({Key? key}) : super(key: key);
  HomePageController C_HomePage = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        gradient:
            LinearGradient(colors: [Color(0xFFD9FFF3), Color(0xFFFFE1F9)]),
      ),
      child: Scaffold(
        appBar: CustomAppBarWithOutPic(
          title: "الصفحة الرئيسية",
          height: 70,
          titleColor: primaryColor,
          backgroundColor: primaryColor.withOpacity(0.2) ,
        ),
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(defaultPadding - 5),
          child: ListView(children: [
                CustomQuestionCard(
                onTap: (){
                  Get.toNamed(RouterNames.GusteProblemScreen);
                },
                authImage: "hhh",
                PostBody: "كيف احمل برنامج xampp ",
                PostOwnrName: "محمد عبدالرحمن",
                commentCont: 23,
                postTitle: "برنامج xampp",
              ),
             
             CustomArticleCard(
              onTap: (){
                Get.toNamed(RouterNames.GustArticleView);
              },
              authImage: "hhh",
              PostBody: "ما هي لغة ++C",
              PostOwnrName: "نورة العبدالله",
              cardDate: "28-12-2022",
              commentCont: 5,
              likeCont: 20,
              postTitle: "لغة ++C",

             ),
            // GetBuilder<HomePageController>(
            //     init: HomePageController(),
            //     builder: (_) {
            //       return ListView.builder(
            //           itemCount: C_HomePage.articleList.length,
            //           shrinkWrap: true,
            //           itemBuilder: (BuildContext context, int index) {
            //             return CustomArticleCard(
            //                 cardDate: C_HomePage.articleList[index]["date"],
            //                 commentCont: C_HomePage.articleList[index]
            //                     ["commentCount"],
            //                 likeCont: C_HomePage.articleList[index]
            //                     ["likeCount"],
            //                 PostOwnrName: C_HomePage.articleList[index]
            //                     ["auth Name"],
            //                 postTitle: C_HomePage.articleList[index]["title"],
            //                 PostBody: C_HomePage.articleList[index]["body"]);
            //           });
            //     })
          ]),
        ),
     
      ),
    );
  }
}
