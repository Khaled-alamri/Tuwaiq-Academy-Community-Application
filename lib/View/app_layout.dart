import 'package:final_project/Controller/Profile%20controller.dart';
import 'package:final_project/View/Camp/CampPresnt.dart';
import 'package:final_project/View/Home/home_screen.dart';
import 'package:final_project/View/article/search_field.dart';
import 'package:final_project/View/profile/profileView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../Packages/package.dart';

class AppLayout extends StatefulWidget {
  
  

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int currentIndex = 0;
profileController C_Profile = Get.put(profileController());
  List<Widget> bottomScreens = [
    HomeScreen(),
    SearchField(),
    TitelPage(),
    profile(),
  ];

  void changeBottomNav(int index) {
    currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {

    return Container(
       height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        gradient:
            LinearGradient(
              colors: [Color(0xFFD9FFF3), Color(0xFFFFE1F9)]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: bottomScreens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: HexColor("#433b81"),
       
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          unselectedItemColor:primaryColor.withOpacity(0.4) ,
          onTap: (index) {
            setState(() {
              changeBottomNav(index);
            });
          },
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_sharp,
                size: 30,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.house,
                size: 30,
              ),
              label: "University",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
