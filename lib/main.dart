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
      theme: ThemeData(
        backgroundColor: Colors.white,
        accentColor: Colors.red[900],
        tabBarTheme: TabBarTheme(labelColor: Colors.black),
        bottomAppBarColor: Colors.grey[300],
        primaryTextTheme: TextTheme(
          headline6: TextStyle(color: Colors.black),
        ),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          textTheme: TextTheme(
            headline6: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      title: "Cmata App",
      home: HomePage(),
    );
  }
}
