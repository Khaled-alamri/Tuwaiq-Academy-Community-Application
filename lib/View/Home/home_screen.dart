import 'package:final_project/Custom/Component/custom%20article%20card.dart';
import 'package:final_project/Controller/homepage%20Controller.dart';
import 'package:final_project/Custom/CustomAppBarWithOutPic.dart';
import 'package:final_project/View/Home/QuestionPage.dart';
import '../../Packages/package.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
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
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: HexColor("#117c78"),
          onPressed: () {
            Get.to(QuestionPage());
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}
