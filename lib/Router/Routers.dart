
import 'package:final_project/View/OnBoarding/Camp/CampPresnt.dart';
import 'package:final_project/View/OnBoarding/PageView.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? getPages =[
    GetPage(name: RouterNames.pageView , page: () => PageViewScreen(),),
    GetPage(name: RouterNames.CampPresnt , page: () => CampPresnt(),),
];

class RouterNames {
  static String pageView = "/PageView";
  static String CampPresnt = "/CampPresnt";
}