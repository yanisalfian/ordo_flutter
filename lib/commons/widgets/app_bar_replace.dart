import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AppBarReplace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Get.theme.primaryColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 8, right: 8),
        child: Row(
          children: [
            Expanded(
              child: Container(
                width: Get.size.width,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: Icon(
                              MdiIcons.magnify,
                              color: Colors.grey,
                              size: 20,
                            )),
                        Expanded(
                          child: TextField(
                            style: TextStyle(fontSize: 13),
                            decoration: InputDecoration(
                                isDense: true,
                                border: InputBorder.none,
                                hintText: 'Search Product'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Badge(
                position: BadgePosition.topEnd(top: -16, end: 4),
                badgeContent: Text(
                  '1',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                badgeColor: Colors.lightBlue,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 8),
                  child: Icon(
                    MdiIcons.cartOutline,
                    size: 20,
                    color: Colors.white,
                  ),
                )),
            Badge(
                position: BadgePosition.topEnd(top: -5, end: 4),
                badgeContent: Text(
                  '3',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    MdiIcons.bellOutline,
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
