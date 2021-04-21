import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BottomAddIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 30,
        left: 0,
        child: Container(
          width: Get.size.width,
          child: Center(
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue, width: 5)),
              child: Center(
                child: Icon(
                  MdiIcons.plusThick,
                  size: 30,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ));
  }
}
