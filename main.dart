import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import 'calci.dart';
import 'navigator.dart';
import 'oddeven.dart';

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
      builder: (context, child) => ResponsiveWrapper.builder(child,
          maxWidth: 1200,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(500, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(500, name: TABLET),
            const ResponsiveBreakpoint.resize(500, name: DESKTOP),
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  //Numbers(),
      Numbers(),
    );
  }
}
