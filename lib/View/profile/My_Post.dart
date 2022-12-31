import 'package:final_project/Component/custom%20article%20card.dart';
import 'package:final_project/Controller/homepage%20Controller.dart';
import 'package:final_project/Packages/package.dart';
import 'package:final_project/View/article/atricle%20view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class My_Post extends StatelessWidget {
   My_Post({super.key});

    HomePageController C_HomePage = Get.find();


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [liftShadow, rightShadow]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(

          title: "منشوراتي",
          iconColor: primaryColor,
          height: 70,
          onPressed: (){
            Get.back();
          },
          titleColor: primaryColor,
          iconImage: "images/AppBarIcon/Back.png",
          backgroundColor: primaryColor.withOpacity(0.2),
        ),
        body: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              GetBuilder<HomePageController>(
                    init: HomePageController(),
                    builder: (_) {
                      return Viewbody();
                    }),
              // MyCustomArticleCard(
              //     postTitle: "flutter",
              //     likeCont: 15,
              //     PostBody: "Hi this is the ",
              //     PostOwnrName: "رهف",
              //     cardDate: "12-17-2022",
              //     commentCont: 4),
              // MyCustomArticleCard(
              //     postTitle: "test",
              //     likeCont: 2,
              //     PostBody: "Hi  ",
              //     PostOwnrName: "test",
              //     cardDate: "12-17-2022",
              //     commentCont: 1),
         
            ],
          ),
        ),
      ),
    );
  }
   ListView Viewbody() {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: C_HomePage.articleList.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return CustomArticleCard(
            onTap: () {
              Get.to(ArticleView());
            },
            cardDate: C_HomePage.articleList[index]["date"],
            commentCont: C_HomePage.articleList[index]["commentCount"],
            likeCont: C_HomePage.articleList[index]["likeCount"],
            PostOwnrName: C_HomePage.articleList[index]["authName"],
            postTitle: C_HomePage.articleList[index]["title"],
            PostBody: C_HomePage.articleList[index]["body"],
            authImage: C_HomePage.articleList[index]["authImage"],
          );
        });
  }
}
