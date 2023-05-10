import 'package:flutter/material.dart';

import 'age.dart';
import 'calci.dart';
import 'oddeven.dart';



class Testone extends StatefulWidget {
  const Testone({Key? key}) : super(key: key);

  @override
  State<Testone> createState() => _TestoneState();
}
class _TestoneState extends State<Testone> {

  int _index = 0 ;

  final pages=  [

     Calculator(),
     Agecalc(),
     Numbers(),

  ];

  void _tap(index)
  {
    setState(() {
      _index = index ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined,color: Colors.grey.shade900,size: 35,),label: "Calculator",),
          BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined,color:Colors.grey.shade900,size: 35,),label: "Age Calculator"),
          BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined,color: Colors.black,size: 35,),label: "Odd or Even"),
        ],
        currentIndex: _index,
        onTap: _tap,
      ),
    );
  }
}
