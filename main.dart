import 'package:flutter/material.dart';
import 'package:students/conformation.dart';
import 'package:students/homepage.dart';
import 'package:students/loginscreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My flutter app',
      home: Loginscreen(),

    );
  }
}




