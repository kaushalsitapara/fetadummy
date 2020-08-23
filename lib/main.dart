import 'package:flutter/material.dart';
import 'package:playground/views/ref/referraldata.dart';
import 'views/directory.dart';
import 'views/homepage.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static List<Referaal> ref = new List<Referaal>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cmata App",
      home: HomePage(),
    );
  }
}
