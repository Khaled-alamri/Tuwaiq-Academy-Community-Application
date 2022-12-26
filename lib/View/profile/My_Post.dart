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
        scrollDirection:Axis.vertical ,
        children: [
                MyCustomArticleCard(
                  postTitle: "flutter",
                  likeCont: 15,
                  PostBody: "Hi this is the ",
                  PostOwnrName: "رهف",
                  cardDate: "12-17-2022",
                  commentCont: 4),
                  MyCustomArticleCard(
                  postTitle: "test",
                  likeCont: 2,
                  PostBody: "Hi  ",
                  PostOwnrName: "test",
                  cardDate: "12-17-2022",
                  commentCont: 1),
                  MyCustomArticleCard(
                  postTitle: "رهف محمد",
                  likeCont: 2,
                  PostBody: "Hi  ",
                  PostOwnrName: "رهف",
                  cardDate: "12-17-2022",
                  commentCont: 1),
                  MyCustomArticleCard(
                  postTitle: "رهف محمد",
                  likeCont: 2,
                  PostBody: "Hi  ",
                  PostOwnrName: "رهف",
                  cardDate: "12-17-2022",
                  commentCont: 1),
        ],
      ),
    );
  }
}