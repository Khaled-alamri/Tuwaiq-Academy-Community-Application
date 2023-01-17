import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/Component/CustomTextField.dart';
import 'package:final_project/Component/article%20view/CustomTopCard.dart';
import 'package:final_project/Component/article%20view/NameWithIcon.dart';
import 'package:final_project/Component/article%20view/Titel.dart';
import 'package:final_project/Component/article%20view/bodyForPost.dart';
import 'package:final_project/Controller/Comments%20Controller.dart';
import 'package:final_project/Controller/ViewPost.dart';
import 'package:final_project/Controller/homepage%20Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../Packages/package.dart';

class ProblemScreen extends StatelessWidget {
  ProblemScreen({Key? key}) : super(key: key);
  CommentsController C_Comments = Get.put(CommentsController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_circle_right_outlined,
                size: 40,
                color: questionsColor,
              ),
            )),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.white,
                Color.fromARGB(255, 255, 239, 179),
              ],
            ),
          ),
          child: Stack(
            children: [
              ListView(
                scrollDirection: Axis.vertical,
                children: [
                  TopCard(
                      imagePQ: Get.arguments["image"] == null
                          ? Image.asset("images/tw.png")
                          : Get.arguments["image"]),
                  Row(
                    children: [
                      NameWithInon1(
                          name: Get.arguments["authName"],
                          Images: Get.arguments["authImage"]),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Dec19 - 2022",
                          style: TextStyle(
                            color: Color.fromARGB(255, 24, 23, 23),
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                  TitelInPagePost(title: Get.arguments["title"]),
                  SizedBox(
                    height: 15,
                  ),
                  BodyInPagePost(Body: Get.arguments["body"]),
                  Center(
                      child: Text(
                    "Comments",
                    style: TextStyle(fontSize: 28),
                  )),
                  // I do the comments here
                  // ListView.builder(
                  //     scrollDirection: Axis.vertical,
                  //     itemCount: 2,
                  //     shrinkWrap: true,
                  //     itemBuilder: (BuildContext context, int) {
                  //       return Center(child: Text("Comments",style: TextStyle(fontSize: 28),));
                  //     }),
                ],
                // GetBuilder<HomePageController>(
                // init: HomePageController(),
                // builder: (_) {
                //   return InkWell(
                //     child: ListView.builder(
                //         scrollDirection: Axis.vertical,
                //         itemCount: C_HomePage.articleList.length,
                //         shrinkWrap: true,
                //         itemBuilder: (BuildContext context, int index) {
                //           return InkWell(
                //             onTap: () {
                //               Get.to(ProblemScreen(),
                //                   arguments: C_HomePage.articleList[index]);
                //             },
                //             child: CustomArticleCard(
                //               cardDate: C_HomePage.articleList[index]["date"],
                //               commentCont: C_HomePage.articleList[index]
                //                   ["commentCount"],
                //               likeCont: C_HomePage.articleList[index]
                //                   ["likeCount"],
                //               PostOwnrName: C_HomePage.articleList[index]
                //                   ["authName"],
                //               postTitle: C_HomePage.articleList[index]["title"],
                //               PostBody: C_HomePage.articleList[index]["body"],
                //               authImage: C_HomePage.articleList[index]
                //                   ["authImage"],
                //             ),
                //           );
                //         }),
                //   );
                // }),
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          padding: EdgeInsetsDirectional.all(10),
          height: 70,
          child: Expanded(
            child: Row(
                // alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        width: Get.width * 0.80,
                        height: 50,
                        child: CustomTextField2(
                          hintTextShow: "Comments",
                          onChanged: (Value) => C_Comments.CommentsPost = Value,
                        )),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: IconButton(
                      icon: Icon(
                        Icons.send,
                        size: 36,
                        color: questionsColor,
                      ),
                      onPressed: () async {
                        C_Comments.postUID = Get.arguments["postUID"];
                        //   C_Comments.postUID = Get.arguments["postUID"];
                        //  await C_Comments.MethodCreateComments();
                        C_Comments.MethodCreateComments();
                      },
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
