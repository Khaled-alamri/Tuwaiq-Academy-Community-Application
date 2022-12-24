import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageViewController extends GetxController {
  PageController controller = PageController();
  bool LastPage = false;

  changePage({var index}) {
    if (index == 2) { //When the LastPage will equale 2 the last page it will be true and this to valdit with the condtion in PageView
      LastPage = true;
      print("index: ${index}");
    }
    update();
  }
}
