import 'package:final_project/Custom/Component/custom%20IconwithName.dart';
import 'package:final_project/Custom/Component/custom%20contentText.dart';
import 'package:final_project/Packages/package.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomArticleCard extends StatelessWidget {
  const CustomArticleCard(
      {super.key,
      required this.cardDate,
      required this.commentCont,
      required this.likeCont,
      required this.PostOwnrName,
      required this.postTitle,
      required this.PostBody});

  final String cardDate;
  final int commentCont;
  final int likeCont;
  final String PostOwnrName;
  final String postTitle;
  final String PostBody;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      margin: EdgeInsetsDirectional.all(10),
      padding: EdgeInsetsDirectional.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10),
        color: Colors.white.withOpacity(0.4),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              nameWithIcon(PostOwnrName: PostOwnrName),
              Spacer(),
              Text(
                cardDate,
                style: TextStyle(
                  color: Color.fromARGB(255, 135, 134, 134),
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          contentText(postTitle: postTitle, PostBody: PostBody),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.comment,
                color: HexColor("#117c78"),
              ),
              const SizedBox(
                width: 7,
              ),
              Text(
                // comment
                commentCont.toString(),
                style: TextStyle(color: HexColor("#117c78"), fontSize: 17),
              ),
              const SizedBox(
                width: 10,
              ),
              Icon(
                Icons.thumb_up,
                color: HexColor("#117c78"),
              ),
              const SizedBox(
                width: 7,
              ),
              Text(
                //like
                likeCont.toString(),
                style: TextStyle(color: HexColor("#117c78"), fontSize: 17),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyCustomArticleCard extends StatelessWidget {
  const MyCustomArticleCard(
      {super.key,
      required this.cardDate,
      required this.commentCont,
      required this.likeCont,
      required this.PostOwnrName,
      required this.postTitle,
      required this.PostBody});

  final String cardDate;
  final int commentCont;
  final int likeCont;
  final String PostOwnrName;
  final String postTitle;
  final String PostBody;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height:  280,
      margin: EdgeInsetsDirectional.all(10),
      padding: EdgeInsetsDirectional.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10),
        color: Colors.white.withOpacity(0.4),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              nameWithIcon(PostOwnrName: PostOwnrName),
              Spacer(),
              Text(
                cardDate,
                style: TextStyle(
                  color: Color.fromARGB(255, 135, 134, 134),
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          contentText(postTitle: postTitle, PostBody: PostBody),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Icon(
                          Icons.comment,
                          color: HexColor("#117c78"),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          // comment
                          commentCont.toString(),
                          style: TextStyle(
                              color: HexColor("#117c78"), fontSize: 17),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.thumb_up,
                          color: HexColor("#117c78"),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          //like
                          likeCont.toString(),
                          style: TextStyle(
                              color: HexColor("#117c78"), fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.disabled_by_default_rounded,
                            size: 30,
                          ),
                          color: Colors.red,
                        ),
                        Text(
                          //like
                          "حذف",
                          style: TextStyle(color: Colors.red, fontSize: 17),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
