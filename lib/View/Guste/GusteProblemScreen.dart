import 'package:final_project/Component/article%20view/CustomTopCard.dart';
import 'package:final_project/Packages/package.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class GusteProblemScreen extends StatefulWidget {
  const GusteProblemScreen({Key? key}) : super(key: key);

  @override
  State<GusteProblemScreen> createState() => _GusteProblemScreenState();
}

class _GusteProblemScreenState extends State<GusteProblemScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.white,
          Color.fromARGB(255, 255, 239, 179),
        ]),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
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
          body: Padding(
            padding: const EdgeInsets.all(defaultPadding - 5),
            child: Stack(
              children: [
                ListView(
                  children: [                
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
                                      color: Colors.black.withOpacity(0.5),
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
                              borderRadius:
                                  BorderRadiusDirectional.circular(10),
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
        Text(
          "السلام عليكم ورحمه الله وبركاته \n كيفية تحميل برنامج Xampp ?",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
