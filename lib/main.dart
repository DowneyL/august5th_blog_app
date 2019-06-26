import 'package:flutter/material.dart';
import 'layout/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'August5th\'s Blog',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
