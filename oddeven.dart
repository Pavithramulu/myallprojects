import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Numbers extends StatefulWidget {
  Numbers({Key? key}) : super(key: key);

  @override
  State<Numbers> createState() => _NumbersState();
}

class _NumbersState extends State<Numbers> {
  TextStyle txt = const TextStyle(fontSize: 20, color: Colors.white);

  final myController = TextEditingController();
  var result;
  String textValue = "";

  @override
  void dispose() {
    super.dispose();
  }
  TextEditingController txtNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          "Numbers",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff202A43),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text("Enter the Number",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          color: Color(0xff000000),
                        )),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 5)),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 300,
                        child: Align(
                          child: TextField(
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            keyboardType: TextInputType.number,
                            controller: txtNumber,
                            onChanged: (d) {
                            },
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                hintText: "enter the number", border: OutlineInputBorder()),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              txtNumber.clear();
                            });
                          },
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: h / 16,
                            width: w / 2,
                            decoration: BoxDecoration(
                                color: const Color(0xd719a28d),
                                borderRadius: BorderRadius.circular(8)),
                            child: const Align(
                                child: Text(
                                  "Clear",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500
                                  ),
                                ) ),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(right: 5)),
                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              textValue = txtNumber.text;
                              if(int.parse(txtNumber.text).isOdd)
                              {
                                result = "Odd";
                                print("Odd");
                              }
                              else
                              {
                                result = "Even";
                                print("Even");
                              }
                            });
                          },
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: h / 16,
                            width: w / 2,
                            decoration: BoxDecoration(
                                color: const Color(0xd719a28d),
                                borderRadius: BorderRadius.circular(8)),
                            child: const Align(
                                child: Text(
                                  "Check Odd or Even",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text("Message",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          color: Color(0xff000000),
                        )),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 5)),
                  Container(
                    height: h / 6,
                    width: w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xd719a28d), Color(0xd719a28d)])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(textValue == "" ? "Please enter number" : "$textValue is an $result number", style: txt),
                        //Text("Your Answer", style: txt)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}