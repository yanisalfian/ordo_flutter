import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ordo_test/modules/home/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final MaterialColor myColor = MaterialColor(0xFF1565c0, {
    50: Color.fromRGBO(21, 101, 192, .5),
    100: Color.fromRGBO(21, 101, 192, .6),
    200: Color.fromRGBO(21, 101, 192, .7),
    300: Color.fromRGBO(21, 101, 192, .8),
    400: Color.fromRGBO(21, 101, 192, .9),
    500: Color.fromRGBO(21, 101, 192, 1),
    600: Color.fromRGBO(21, 101, 192, 1),
    700: Color.fromRGBO(21, 101, 192, 1),
    800: Color.fromRGBO(21, 101, 192, 1),
    900: Color.fromRGBO(21, 101, 192, 1),
  });

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ORDO',
      theme: ThemeData(fontFamily: 'Poppins', primarySwatch: myColor),
      home: HomePage(),
    );
  }
}
