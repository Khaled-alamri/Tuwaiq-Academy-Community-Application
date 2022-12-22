import 'package:final_project/Component/custom%20IconwithName.dart';
import 'package:final_project/Component/custom%20contentText.dart';
import 'package:final_project/Component/custom%20article%20card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#f2eff6"),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 120,
                padding: EdgeInsetsDirectional.only(bottom: 10),
                width: double.infinity,
                color: HexColor("#d4c7de"),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "الصفحة الرئيسية",
                    style: TextStyle(
                      color: HexColor("#423d62"),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              // Container(
              //   margin: EdgeInsetsDirectional.all(10),
              //   padding: EdgeInsetsDirectional.all(20),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadiusDirectional.circular(10),
              //     color: HexColor("#dbd9de"),
              //   ),
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       Row(
              //         children: [
              //           nameWithIcon(),
              //           Spacer(),
              //           Text(
              //             "Dec19 - 2022",
              //             style: TextStyle(
              //               color: Color.fromARGB(255, 135, 134, 134),
              //               fontSize: 16,
              //             ),
              //           ),
              //         ],
              //       ),
              //       const SizedBox(
              //         height: 15,
              //       ),
              //       contentText(),
              //       const SizedBox(
              //         height: 20,
              //       ),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.end,
              //         children: [
              //           Icon(
              //             Icons.comment,
              //             color: HexColor("#117c78"),
              //           ),
              //           const SizedBox(
              //             width: 7,
              //           ),
              //           Text(
              //             "3",
              //             style: TextStyle(
              //                 color: HexColor("#117c78"), fontSize: 17),
              //           ),
              //           const SizedBox(
              //             width: 10,
              //           ),
              //           Icon(
              //             Icons.thumb_up,
              //             color: HexColor("#117c78"),
              //           ),
              //           const SizedBox(
              //             width: 7,
              //           ),
              //           Text(
              //             "3",
              //             style: TextStyle(
              //                 color: HexColor("#117c78"), fontSize: 17),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              CustomArticleCard(
                  postTitle: "Test Zhar",
                  likeCont: 15,
                  PostBody: "Hi this is the ",
                  PostOwnrName: "Zhara",
                  cardDate: "12-17-2022",
                  commentCont: 4),
              const SizedBox(
                height: 50,
              ),
              Container(
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
                        nameWithIcon(PostOwnrName: "زهرة"),
                        const SizedBox(
                          height: 15,
                        ),
                        contentText(
                            postTitle: "من اناااا؟",
                            PostBody:
                                "كيف اسجل فaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaي معسكران في نفس الوaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaقت"),
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
                              "3",
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
              ),
              
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: HexColor("#117c78"),
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }

  // Widget nameWithIcon() {
  //   return Row(
  //     children: [
  //       CircleAvatar(
  //         backgroundColor: Colors.white,
  //         child: Icon(
  //           Icons.laptop,
  //           color: Colors.black,
  //         ),
  //       ),
  //       const SizedBox(
  //         width: 10,
  //       ),
  //       Text(
  //         "سارة القوده",
  //         style: TextStyle(
  //             color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
  //       ),
  //     ],
  //   );
  // }

  // Widget contentText() {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(
  //         "ما هو flutter؟",
  //         style: TextStyle(
  //             color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
  //       ),
  //       const SizedBox(
  //         height: 10,
  //       ),
  //       Text(
  //         "فلاتر هو (SDK) للهاتف المحمول أي حزمة تطوير تطبيقات الهواتف الذكية، يسمح لك بكتابة تطبيق في قاعدة بيانات واحدة وتترجم لكل من Android و  IOS. يعتبر فلاتر Flutter اطار عمل.",
  //         style: TextStyle(
  //           color: Colors.black,
  //           fontSize: 17,
  //         ),
  //       ),
  //     ],
  //   );
  // }
}
