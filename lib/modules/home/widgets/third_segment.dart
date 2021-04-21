import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeThirdSegment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          color: Get.theme.primaryColor,
          child: Padding(
            padding: EdgeInsets.fromLTRB(8, 45, 8, 0),
            child: Center(
                child: Text(
              'Segment 3',
              style: Get.textTheme.headline6.copyWith(color: Colors.white),
            )),
          ),
        ),
        Expanded(
            child: Center(
          child: Text('Bagian ke 3'),
        ))
      ],
    );
  }
}
