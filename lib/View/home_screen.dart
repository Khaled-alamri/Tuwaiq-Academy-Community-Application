import 'package:final_project/Component/custom%20IconwithName.dart';
import 'package:final_project/Component/custom%20contentText.dart';
import 'package:final_project/Component/custom%20article%20card.dart';
import 'package:final_project/Controller/homepage%20Controller.dart';
import 'package:final_project/Services/firebase/articleSystem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomePageController c_homePage = Get.put(HomePageController());

  //var test = viewArticle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        GetBuilder<HomePageController>(
            init: HomePageController(),
            builder: (_) {
              return ListView.builder(
                  itemCount: c_homePage.articleList.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return CustomArticleCard(
                        cardDate: c_homePage.articleList[index]["date"],
                        commentCont: c_homePage.articleList[index]
                            ["commentCount"],
                        likeCont: c_homePage.articleList[index]["likeCount"],
                        PostOwnrName: c_homePage.articleList[index]
                            ["auth Name"],
                        postTitle: c_homePage.articleList[index]["title"],
                        PostBody: c_homePage.articleList[index]["body"]);
                  });
            })
      ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: HexColor("#117c78"),
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}
