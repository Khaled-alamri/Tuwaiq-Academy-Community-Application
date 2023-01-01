import 'package:final_project/Controller/Profile%20controller.dart';
import 'package:final_project/Style/Style.dart';
import 'package:final_project/View/Camp/CampPresnt.dart';
import 'package:final_project/View/Guste/GuestHomeScreen.dart';
import 'package:final_project/View/Guste/GuestTitelPage.dart';
import 'package:final_project/View/Guste/Guestprofile.dart';
import 'package:final_project/View/Guste/SearchPage.dart';
import 'package:final_project/View/Home/home_screen.dart';
import 'package:final_project/View/article/search_field.dart';
import 'package:final_project/View/profile/profileView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class GuestAppLayout extends StatefulWidget {
  @override
  State<GuestAppLayout> createState() => _GuestAppLayout();
}

class _GuestAppLayout extends State<GuestAppLayout> {
  int _selectedIndex = 0;
  //profileController C_Profile = Get.put(profileController());

  List<Widget> bottomNavigationBarItem = [
    GuestHomeScreen(),
    SearchPage(),
    GuestTitelPage(),
    Guestprofile(),
  ];

  void changeBottomNav(int index) {
    _selectedIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        gradient:
            LinearGradient(colors: [Color(0xFFD9FFF3), Color(0xFFFFE1F9)]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: primaryColor,
          unselectedItemColor: primaryColor.withOpacity(0.4),
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          currentIndex: _selectedIndex,
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
        body: bottomNavigationBarItem.elementAt(_selectedIndex),
      ),
    );
  }
}
