import 'package:final_project/Component/TitelCamp.dart';
import 'package:final_project/Component/custom%20article%20card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class My_Post extends StatelessWidget {
  const My_Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: HexColor("#f2eff6"),
     appBar: PreferredSize(
          preferredSize: Size.fromHeight(180), // Set this height
          child: SafeArea(
            child: ListView(
              children: [
              CustomTitleWithRadius(Title:  "منشوراتي",height1: 150,),
              
                    ],
                  ),
          ),
              ),

      body: ListView(
        children: [
                MyCustomArticleCard(
                  postTitle: "Test Zhar",
                  likeCont: 15,
                  PostBody: "Hi this is the ",
                  PostOwnrName: "Zhara",
                  cardDate: "12-17-2022",
                  commentCont: 4),
                  MyCustomArticleCard(
                  postTitle: "Test Zhar",
                  likeCont: 2,
                  PostBody: "Hi  ",
                  PostOwnrName: "Zhara",
                  cardDate: "12-17-2022",
                  commentCont: 1),
                  MyCustomArticleCard(
                  postTitle: "Test Zhar",
                  likeCont: 2,
                  PostBody: "Hi  ",
                  PostOwnrName: "Zhara",
                  cardDate: "12-17-2022",
                  commentCont: 1),
        ],
      ),
    );
  }
}