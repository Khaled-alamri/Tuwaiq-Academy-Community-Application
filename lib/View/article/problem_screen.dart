
import 'package:final_project/Component/article%20view/CustomTopCard.dart';
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
    return Directionality(
      textDirection: TextDirection.rtl,
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
                  TopCard(imagePQ: "images/xampp(1).jpg"),
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
                                color: Colors.black.withOpacity(0.5),
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
                      "برنامج Xampp",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
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
                                  AssetImage("images/images 1.png"),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "نورةالعبدالله",
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
                              "نقوم بالدخول على صفحة البرنامج من خلال هذا الرابط  https://www.apachefriends.org/download.html2. نقوم باختيار الاصدار الذى نريده (يفضل الاصدار7.1.1 / PHP 7.1.1 وهو الإصدار الأخير حتى كتابة هذه السطور ) ثم الضغط على download ليبدأ البرنامج بالتحميل.3. بعد أن ينتهي البرنامج من التحميل نقوم بفتحه ليبدأ فى التثبيت نتبع الخطوات ",
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
          child: Expanded(
            child: Row(
              // alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container( 
                    width: Get.width * 0.80,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                        ),
                        filled: true,
                        hintText: "اترك رسالتك هنا",
                        hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                        focusColor: questionsColor,
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
                      color: questionsColor,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
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
            "السلام عليكم ورحمه الله وبركاته \n كيفية تحميل برنامج Xampp ?",
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
