import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/Component/custom%20article%20card.dart';
import 'package:final_project/Controller/Search%20Controller.dart';
import 'package:final_project/Packages/package.dart';
import 'package:final_project/View/article/atricle%20view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController search = TextEditingController();
  QuerySnapshot? snapshotData;
  bool isEX = false;

  Widget searchDataW() {
    return ListView.builder(
      itemCount: snapshotData!.docs.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(defaultPadding - 5),
          child: CustomArticleCard(
            onTap: () {
              Get.to(ArticleView());
            },
            cardDate: snapshotData!.docs[index]["date"],
            commentCont: snapshotData!.docs[index]["commentCount"],
            likeCont: snapshotData!.docs[index]["likeCount"],
            PostOwnrName: snapshotData!.docs[index]["authName"],
            postTitle: snapshotData!.docs[index]["title"],
            PostBody: snapshotData!.docs[index]["body"],
            authImage: snapshotData!.docs[index]["authImage"],
          ),
        );
      },
    );
  }

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
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(defaultPadding + 5),
                  child: GetBuilder<SearchController>(
                    init: SearchController(),
                    builder: (controller) {
                      return TextFormField(
                        onChanged: (search) {
                          controller.queryData(queryData: search).then((value) {
                            snapshotData = value;
                            setState(() {
                              isEX = true;
                            });
                          });
                        },
                        controller: search,
                        cursorColor: Colors.white,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          contentPadding:
                              const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          labelStyle: const TextStyle(color: Colors.white),
                          isDense: true,
                          filled: true,
                          fillColor: primaryColor.withOpacity(0.3),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: primaryColor),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                    child: Container(
                  height: Get.height,
                  width: Get.width,
                  child: isEX
                      ? searchDataW()
                      : Center(
                          child: Container(
                              decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  "images/Logo.png",
                                ),
                                opacity: 0.3),
                          )),
                        ),
                )),
              ],
            ),
          )),
    );
  }
}
