import 'package:auto_size_text/auto_size_text.dart';
import 'package:final_project/Component/CustomButton.dart';
import 'package:final_project/Component/CustomTextField.dart';
import 'package:final_project/Component/campComponent/CardCamp.dart';
import 'package:final_project/Component/TitelCamp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class CampPresnt extends StatelessWidget {
  const CampPresnt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#f2eff6"),
        body: ListView(children: [
          CardCamp(
              DateOfCamp: "شهرين",
              NamberOfStudent: "25",
              Img: "images/js.png",
              NameOfCamp: "Flutter",
              detailsOfCamp: " معسكر جافاسكربت"),
        ]));
  }
}

class CampPresnt_2 extends StatelessWidget {
  CampPresnt_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#f2eff6"),
        body: ListView(children: [
          CardCamp(
              DateOfCamp: "شهرين",
              NamberOfStudent: "25",
              Img: "images/java.png",
              NameOfCamp: "Flutter",
              detailsOfCamp: "معسكر Java"),
              
          CardCamp(
              DateOfCamp: "شهرين",
              NamberOfStudent: "25",
              Img: "images/Flutter Logo 1.png",
              NameOfCamp: "Flutter",
              detailsOfCamp: "معسكر flutter"),
        ]));
  }
}

class TitelPage extends StatelessWidget {
  const TitelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: HexColor("#d4c7de"),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(110),
            child: Column(
              children: [
                 CustomTitle(Title:"المعسكرات",height1: 110),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            TabBar(
              labelColor:  Color.fromARGB(255, 255, 255, 255),
              indicator: UnderlineTabIndicator(),
              tabs: [
                Tab(
                  
                  child: Text("الحاليه",style: TextStyle(fontSize: 28,color: Color.fromARGB(255, 184, 36, 36)),)
                ),
                Tab(
                 
                  child: Text("القادمه",style: TextStyle(fontSize: 28,color:Color.fromARGB(255, 4, 81, 123)),)
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  CampPresnt(),
                  CampPresnt_2()
                ],
              ),
            ),
          ],
        ),
      ),
    );;
  }
}
