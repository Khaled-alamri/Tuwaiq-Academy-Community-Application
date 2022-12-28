
import 'package:final_project/Component/article%20view/CustomDivider.dart';
import 'package:final_project/Component/article%20view/CustomMessage.dart';
import 'package:final_project/Component/article%20view/CustomTopCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
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
                  Colors.blue,
                  Color.fromARGB(255, 171, 198, 244),
                ],
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: Stack(
            children: [
              ListView(
                children: [
                  const SizedBox(
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
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsetsDirectional.all(20),
                  height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(20),
                      topEnd: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [
                      ListView(
                        children: [
                          Container(
                            width: 80,
                            height: 5,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
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
                        ],
                      ),
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              width: 320,
                              height: 50,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  fillColor: Color.fromARGB(64, 19, 129, 219),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(0)),
                                  ),
                                  filled: true,
                                  hintText: "اكتب رسالتك هنا",
                                  hintStyle: TextStyle(color: Colors.black),
                                  focusColor: Colors.blue,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(64, 255, 255, 255),
                                        width: 0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(64, 255, 255, 255),
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
                                color: Colors.blue,
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
