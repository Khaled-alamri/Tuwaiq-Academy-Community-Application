import 'package:final_project/Component/custom%20IconwithName.dart';
import 'package:final_project/Component/custom%20contentText.dart';
import 'package:final_project/Packages/package.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';


//Static Card 
class CustomQuestionCardStatic extends StatelessWidget {
   CustomQuestionCardStatic(
      {super.key,
      required this.commentCont,
      required this.PostOwnrName,
      required this.postTitle,
      required this.PostBody,
      this.onTap, 
        this.sImage
      });

  final int commentCont;
  final String PostOwnrName;
  final String postTitle;
  final String PostBody;
   Function()? onTap;
   final String? sImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ,
      child: Container(
        height: 200,
        margin: EdgeInsetsDirectional.all(10),
        padding: EdgeInsets.only(top: 30 ,  ),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(10),
          color: HexColor("#f2edd0"),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                       CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.laptop, color: Colors.black,),
                      ),
                      SizedBox(width: 10,),
                      Text(PostOwnrName),
                     
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  contentText(postTitle: postTitle, PostBody: PostBody),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
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
                          commentCont.toString(),
                          style: TextStyle(color: primaryColor, fontSize: 15),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: -70,
              left: -20,
              child: Icon(
                Icons.question_mark,
                color: HexColor("#fcdb69"),
                size: 100,
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
      ),
    );
  }
}
