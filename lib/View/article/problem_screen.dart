
import 'package:final_project/Component/article%20view/CustomTopCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class ProblemScreen extends StatefulWidget {
  const ProblemScreen({Key? key}) : super(key: key);

  @override
  State<ProblemScreen> createState() => _ProblemScreenState();
}

class _ProblemScreenState extends State<ProblemScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFE2D1C3),
                  Color(0xFFFDFCFB)
                ],
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: Stack(
            children: [
              ListView(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                        start: 10.0, bottom: 5),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.arrow_circle_right_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
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
                      "مشكلة تشغيل تطبيق فلاتر",
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
                    child: contentText(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              backgroundImage:
                                  AssetImage("assets/images/girl.jpg"),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "سارة القوده",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
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
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsetsDirectional.all(10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(10),
                            color: Colors.white,
                          ),
                          child: Text(
                            "حاول تتأكد من اصدار اندرويد ممكن يكون السبب اللي جعل هذه المشكلة تظهر لك ",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 17,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          padding: EdgeInsetsDirectional.all(10),
          height: 70,
          child: Row(
            // alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 340,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                      ),
                      filled: true,
                      hintText: "اكتب رسالتك هنا",
                      hintStyle: TextStyle(color: Colors.black),
                      focusColor: Colors.brown,
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                            color: Color.fromARGB(64, 255, 255, 255), width: 0),
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
                    color: Colors.brown,
                  ),
                  onPressed: () {},
                ),
              )
            ],
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
          "السلام عليكم ورحمه الله وبركاته \n مساء طيب علي الجميع \n لو سمحت عندى مشكلة في تطبيق فلاتر وبحاول احل المشكلة لكن مو عارف",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
