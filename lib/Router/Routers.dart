
import 'package:final_project/View/Camp/CampPresnt.dart';
import 'package:final_project/View/OnBoarding/PageView.dart';
import 'package:final_project/View/profile/profileView.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? getPages =[
    GetPage(name: RouterNames.pageView , page: () => PageViewScreen(),),
    GetPage(name: RouterNames.CampPresnt , page: () => const CampPresnt(),),
     GetPage(name: RouterNames.profile , page: () => const profile(),),
];


class RouterNames {
  static String pageView = "/PageView";
  static String CampPresnt = "/CampPresnt";
  static String profile = "/profile";
}