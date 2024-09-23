import 'package:flutter/material.dart';
import 'package:exam_29_09_2024/swiggy1.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swiggy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home: SwiggyScreen(),
    );
  }
}
