import 'package:final_project/View/Camp/CampPresnt.dart';
import 'package:final_project/View/Home/home_screen.dart';
import 'package:final_project/View/profile/profileView.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppLayout extends StatefulWidget {
  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  int currentIndex = 0;

  List<Widget> bottomScreens = [
    HomeScreen(),
    Text("Page"),
    TitelPage(),
    profile(),
  ];

  void changeBottomNav(int index) {
    currentIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomScreens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: HexColor("#433b81"),
        
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
              color: HexColor("#433b81"),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_sharp,
              size: 30,
              color: Colors.grey,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.house,
              size: 30,
              color: Colors.grey,
            ),
            label: "University",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
              color: Colors.grey,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
