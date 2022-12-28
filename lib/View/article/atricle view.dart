import 'package:final_project/Component/article%20view/CustomDivider.dart';
import 'package:final_project/Component/article%20view/CustomMessage.dart';
import 'package:final_project/Component/article%20view/CustomTopCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class ArticleView extends StatefulWidget {
  const ArticleView({Key? key}) : super(key: key);

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFFACCBEE),
          Color(0xFFE7F0FD),
        ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
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
                ),
              )),
          floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xFF2D79A3),
            onPressed: () {
              customshowMdelButtom(context);
            },
            child: Icon(Icons.comment_outlined),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsetsDirectional.only(bottom: 40),
              child: Column(
                children: [
                  TopCard(imagePQ: "images/ISO_C++_Logo.svg.png"),
                  Container(
                    padding: EdgeInsetsDirectional.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            nameWithIcon(),
                            Spacer(),
                            Text(
                              "Dec19 - 2022",
                              style: TextStyle(
                                color: Color.fromARGB(255, 226, 226, 226),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.all(10),
                    padding: EdgeInsetsDirectional.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: Colors.white,
                    ),
                    child: Text(
                      "ما هو flutter؟",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.all(10),
                    padding: EdgeInsetsDirectional.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: Colors.white,
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            contentText(),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: -30,
                          left: 0,
                          child: InkWell(
                            onTap: () {
                              print("Like");
                            },
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 45,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  ///Heres the Shwo Model Buttom Sheet
  Future<dynamic> customshowMdelButtom(BuildContext context) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 5,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(50)),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.all(20),
                height: 425,
                child: ListView(children: [
                  CustomMessage(),
                  CustomDivider(),
                  CustomMessage(),
                  CustomDivider(),
                  CustomMessage(),
                  CustomDivider(),
                  CustomMessage(),
                  CustomDivider(),
                  CustomMessage(),
                  CustomDivider(),
                  CustomMessage(),
                  CustomDivider(),
                  CustomMessage(),
                  CustomDivider(),
                  CustomMessage(),
                  CustomDivider(),
                ]),
              ),
              Expanded(
                child: Row(
                  children: [
                    RotatedBox(
                      quarterTurns: 2,
                      child: IconButton(
                          onPressed: () {
                            print("Send Massge");
                          },
                          icon: Icon(Icons.send_rounded,size: 35,color: Colors.green,)),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15)),
                            labelText: 'تعليق',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
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
          "سارة القوده",
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
        Text(
          "فلاتر هو (SDK) للهاتف المحمول أي حزمة تطوير تطبيقات الهواتف الذكية، يسمح لك بكتابة تطبيق في قاعدة بيانات واحدة وتترجم لكل من Android و  IOS. يعتبر فلاتر Flutter اطار عمل.",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "تم انشاء اطار عمل فلاتر Flutter من الصفر واستخدم لكتابته وبنائه لغة Dart ولغة C++ وهو لا يزال نوعاً ما في مرحلتها التجريبية , على الرغم من ذلك , فاطار عمل فلاتر تم اصداره رسمياً لكن لا يزال في المرحلة التجريبية للنجاح , هل سينجح أم لا ؟ هذه هي التجربة التي يخضوها اطار عمل فلاتر حالياً ويبدو انه في طريقه الى النجاح. يستخدم اطار عمل فلاتر في الأساس لتطوير واجهات الاستخدام UI ويتعاون مع لغة البرمجة Dart للتعامل مع العمليات البرمجية BackEnd.",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
