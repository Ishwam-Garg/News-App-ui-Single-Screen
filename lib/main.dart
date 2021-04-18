import 'package:flutter/material.dart';
import 'package:internsample_project/views/BottomNavScreen.dart';
import 'package:internsample_project/views/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavScreen(),
      theme: ThemeData(
        accentColor: Colors.transparent,
        backgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
        ),

      ),
    );
  }
}