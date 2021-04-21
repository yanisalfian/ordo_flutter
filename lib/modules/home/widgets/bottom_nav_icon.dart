import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ordo_test/modules/home/controllers/home_controller.dart';

class BottomNavIcon extends StatelessWidget {
  final int index;
  final IconData icon;
  BottomNavIcon(this.index, this.icon);

  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      bool isActive = controller.activeMenu.value == index;
      return GestureDetector(
        onTap: () {
          controller.pageController.animateToPage(index,
              duration: Duration(milliseconds: 500), curve: Curves.ease);
        },
        child: Column(
          children: [
            Icon(
              icon,
              size: 28,
              color: isActive ? Colors.blue : Colors.grey,
            ),
            Container(
              width: 4,
              height: 4,
              decoration: BoxDecoration(
                  color: isActive ? Colors.blue : Colors.white,
                  shape: BoxShape.circle),
            )
          ],
        ),
      );
    });
  }
}
