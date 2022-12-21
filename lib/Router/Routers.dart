
import 'package:final_project/View/OnBoarding/PageView.dart';
import 'package:final_project/View/app_layout.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? getPages = [
    GetPage(name: RouterNames.pageView , page: () => PageViewScreen(),),
    GetPage(name: RouterNames.appLayout , page: () => AppLayout(),),
];

class RouterNames {
  static String pageView = "/PageView";
  static String appLayout = "/appLayout";
}