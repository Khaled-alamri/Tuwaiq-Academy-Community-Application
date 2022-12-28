import 'package:final_project/Component/article%20view/CustomDivider.dart';
import 'package:final_project/Component/article%20view/CustomMessage.dart';
import 'package:final_project/Component/article%20view/CustomTopCard.dart';
import 'package:final_project/Packages/package.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class GustArticleView extends StatefulWidget {
  const GustArticleView({Key? key}) : super(key: key);

  @override
  State<GustArticleView> createState() => _GustArticleViewState();
}

class _GustArticleViewState extends State<GustArticleView> {
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
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding -5 ),
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
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsetsDirectional.only(bottom: 40),
                child: Column(
                  children: [
                    TopCard(),
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
                                "Dec28 - 2022",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.4),
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
                        "ماهي لغة ++C ?",
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
          "نورة العبدالله",
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
        Text("لغة C++ من أقدم لغات البرمجة التي لا زالت تُستخدم في أيامنا هذه، وهي المُهيمنة على تطبيقات سطح الكتب بجانب لغات المتوفرة من شركة مايكروسوفت،  تتميز بأنّها لغة عالية المستوى high-level Language، تُستخدم على نحو كبير لتطوير أنظمة التّشغيل، وتعلمها سيساعدك على فهم مبادئ  وعمل البرامج بشكل أفضل وأكثر تعمقا وستعينك كذلك على فهم كيفية إدارة الذاكرة من قبل البرامج، بحيث تُمكنك من إدارة ذاكرة البرنامج الذي تُطوره بشكل كامل دون قيود، كما أنّ لغة C++ قد أثّرت على العديد من لغات البرمجة الحديثة المشهورة مثل Java ولغة PHP. اللغة تعتمد على مبدأ البرمجة الكائنية أو Object Oriented Programming ما يجعلها مرنة  وسهلة الاستخدام. تُمكنك لغة C++ من إنشاء تطبيقات سطح المكتب ذات أداء عالي وتجاوب سريع وتُعتبر مكتبة Qt من أشهر المكتبات المتاحة لهذا الغرض.",
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
