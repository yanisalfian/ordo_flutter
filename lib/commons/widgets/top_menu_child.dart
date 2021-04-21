import 'package:flutter/material.dart';

class TopMenuChild extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color iconColor;
  final Color gradientStart;

  TopMenuChild(this.icon, this.title, this.iconColor, this.gradientStart);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.lightBlue,
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [gradientStart, Colors.white]),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[400],
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(0, 1))
              ]),
          child: Icon(
            icon,
            color: iconColor,
            size: 30,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            title,
            style: TextStyle(fontSize: 10),
          ),
        )
      ],
    );
  }
}
