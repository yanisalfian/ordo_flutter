import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ordo_test/modules/home/controllers/home_controller.dart';
import 'package:ordo_test/modules/home/widgets/bottom_add_icon.dart';
import 'package:ordo_test/modules/home/widgets/bottom_navbar.dart';
import 'package:ordo_test/modules/home/widgets/first_segment.dart';
import 'package:ordo_test/modules/home/widgets/fourth_segment.dart';
import 'package:ordo_test/modules/home/widgets/second_segment.dart';
import 'package:ordo_test/modules/home/widgets/third_segment.dart';

class HomePage extends StatelessWidget {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light
            .copyWith(statusBarColor: Get.theme.primaryColor),
        child: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.onPageChanged,
              children: [
                HomeFirstSegment(),
                HomeSecondSegment(),
                HomeThirdSegment(),
                HomeFourthSegment()
              ],
            ),
            BottomNavbar(),
            BottomAddIcon(),
          ],
        ),
      ),
    );
  }
}
