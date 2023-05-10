import 'package:flutter/material.dart';

import 'exam.dart';
import 'example1.dart';
import 'list.dart';
import 'num1.dart';
import 'nums.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),
      home: Exam11(),
      //Sejfdh(),
     // Numbers1(),
       //CalculateAge(),
    );
  }
}

