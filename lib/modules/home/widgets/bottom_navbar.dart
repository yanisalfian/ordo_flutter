import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:ordo_test/modules/home/widgets/bottom_nav_icon.dart';

class BottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        left: 0,
        child: Container(
          height: 50,
          width: Get.size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[300],
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BottomNavIcon(0, MdiIcons.homeOutline),
                BottomNavIcon(1, MdiIcons.chatOutline),
                Container(width: Get.size.width * 0.1),
                BottomNavIcon(2, MdiIcons.openInApp),
                BottomNavIcon(3, MdiIcons.accountOutline)
              ],
            ),
          ),
        ));
  }
}
