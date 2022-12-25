import 'package:final_project/Component/custom%20IconwithName.dart';
import 'package:final_project/Component/custom%20contentText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomQuestionCard extends StatelessWidget {
  const CustomQuestionCard({super.key,  required this.commentCont, required this.PostOwnrName, required this.postTitle, required this.PostBody});

  final int commentCont;
  final String PostOwnrName;
  final String postTitle;
  final String PostBody;


  @override
  Widget build(BuildContext context) {
    return Container(
                height: 250,
                margin: EdgeInsetsDirectional.all(10),
                padding: EdgeInsetsDirectional.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(10),
                  color: HexColor("#f2edd0"),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        nameWithIcon(PostOwnrName: PostOwnrName),
                        const SizedBox(
                          height: 15,
                        ),
                        contentText(
                            postTitle: postTitle,
                            PostBody:
                               PostBody),
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
                              commentCont.toString(),
                              style: TextStyle(
                                  color: HexColor("#117c78"), fontSize: 17),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      top: -70,
                      left: -20,
                      child: Icon(
                        Icons.question_mark,
                        color: HexColor("#fcdb69"),
                        size: 130,
                        shadows: [
                          BoxShadow(
                              color: Color.fromARGB(232, 185, 185, 185),
                              spreadRadius: 10,
                              offset: Offset(0, 3))
                        ],
                      ),
                    ),
                  ],
                ),
              );
  }
}