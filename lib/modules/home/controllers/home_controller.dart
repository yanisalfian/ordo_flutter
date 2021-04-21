import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  PageController pageController = PageController();

  final activeMenu = 0.obs;

  onPageChanged(int val) {
    activeMenu.value = val;
  }

  changePage(int val) {
    activeMenu.value = val;
    pageController.jumpToPage(val);
  }
}
