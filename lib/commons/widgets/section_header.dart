import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SectionHeader extends StatelessWidget {
  final String title;

  SectionHeader(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
          ),
          Text(
            'Lihat semua',
            style: TextStyle(color: Get.theme.primaryColor, fontSize: 12),
          ),
          Icon(
            Icons.chevron_right,
            color: Get.theme.primaryColor,
            size: 20,
          )
        ],
      ),
    );
  }
}
