import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_project/Component/article%20view/CustomTopCard.dart';
import 'package:final_project/Component/article%20view/NameWithIcon.dart';
import 'package:final_project/Component/article%20view/Titel.dart';
import 'package:final_project/Component/article%20view/bodyForPost.dart';
import 'package:final_project/Controller/ViewPost.dart';
import 'package:final_project/Controller/homepage%20Controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../Packages/package.dart';

class ProblemScreen extends StatefulWidget {
  const ProblemScreen({Key? key}) : super(key: key);
  @override
  State<ProblemScreen> createState() => _ProblemScreenState();
}

class _ProblemScreenState extends State<ProblemScreen> {
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
                children: [
                  TopCard(imagePQ: Get.arguments["image"]==null ? Image.asset("images/tw.png"):Get.arguments["image"]),
                  Row(
                    children: [
                      NameWithInon1(name: Get.arguments["authName"], Images:Get.arguments["authImage"] ),
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
                  BodyInPagePost(Body: Get.arguments["body"])

                ],
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
                    child:TextFormField(
                        
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(0)),
                          ),
                          filled: true,
                          hintText: "اترك رسالتك هنا",
                          hintStyle:
                              TextStyle(color: Colors.black.withOpacity(0.5)),
                          focusColor: questionsColor,
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color.fromARGB(64, 255, 255, 255),
                                width: 0),
                          ),
                        ),
                        style: TextStyle(height: 3.0),
                      ),
                    ),
                  ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: IconButton(
                    icon: Icon(
                      Icons.send,
                      size: 36,
                      color: questionsColor,
                    ),
                    onPressed: () {},
                  ),
                ),
              ]
                          ),
          ),
        ),
      ),
    );
  }

  Widget nameWithIcon() {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.laptop,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          "محمد عبدالرحمن",
          style: TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Widget contentText() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          child: Text(
            "السلام عليكم ورحمه الله وبركاته \n كيفية تحميل برنامج Xampp ؟",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }
}
