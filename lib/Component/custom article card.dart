import 'package:final_project/Component/custom%20IconwithName.dart';
import 'package:final_project/Component/custom%20contentText.dart';
import 'package:final_project/Packages/package.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomArticleCard extends StatelessWidget {
  CustomArticleCard(
      {super.key,
      required this.cardDate,
      required this.commentCont,
      required this.likeCont,
      required this.PostOwnrName,
      required this.postTitle,
      required this.PostBody,
      this.onTap, required this.authImage});

  final String cardDate;
  final int commentCont;
  final int likeCont;
  final String PostOwnrName;
  final String postTitle;
  final String PostBody;
  Function()? onTap;
  final String authImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsetsDirectional.all(10),
        padding: EdgeInsetsDirectional.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(10),
            color: Color(0xFF3FB7F8).withOpacity(0.2)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                nameWithIcon(PostOwnrName: PostOwnrName,authImage:authImage ),
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
                  size: 20,
                  color: primaryColor,
                ),
                const SizedBox(
                  width: 7,
                ),
                Text(
                  // comment
                  commentCont.toString(),
                  style: TextStyle(color: primaryColor, fontSize: 17),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.thumb_up,
                  size: 20,
                  color: primaryColor,
                ),
                const SizedBox(
                  width: 7,
                ),
                Text(
                  //like
                  likeCont.toString(),
                  style: TextStyle(color: primaryColor, fontSize: 15),
                ),
              ],
            ),
          ],
        ),
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
      margin: EdgeInsetsDirectional.all(10),
      padding: EdgeInsetsDirectional.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10),
          color: Colors.white.withOpacity(0.5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              nameWithIcon2(PostOwnrName: PostOwnrName),
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
            height: 5,
          ),
          contentText(postTitle: postTitle, PostBody: PostBody),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Icon(Icons.comment, color: primaryColor),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          // comment
                          commentCont.toString(),
                          style: TextStyle(color: primaryColor, fontSize: 17),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.thumb_up, color: primaryColor),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          //like
                          likeCont.toString(),
                          style: TextStyle(color: primaryColor, fontSize: 17),
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
