import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';


import 'navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context,child)=> ResponsiveWrapper.builder(child,
      maxWidth : 1200,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(500,name: MOBILE),
          const ResponsiveBreakpoint.autoScale(500,name: TABLET),
          const ResponsiveBreakpoint.resize(500,name: DESKTOP),
        ],
        background: Container(
          color: Color(0xFFF5F5F5),
        ),
       ),
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Testone(),
    );
  }
}


