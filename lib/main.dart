import 'package:flutter/material.dart';
import 'package:taskk/Third.dart';
import 'package:taskk/first.dart';
import 'four.dart';
import 'second.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Onboarding(),
    );
  }
}