import 'package:flutter/material.dart';
import 'package:forth_project/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "FlutterDemo",
      home: HomePage(),
      );
  }
}
