import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  Calculator ({Key? key}) : super(key: key);

  TextEditingController txtValue = TextEditingController();
  String firstNum = "";
  String secNum = "";
  String selectedOpClicked = "";
  bool  isOpClicked = false;

  get result => null;

  get num1 => null;

  void addValue(int value) {
  }

  NumPress(String val)
  {
    print("Op clicked or not: $isOpClicked");
    if(isOpClicked) {
      secNum += val;
      txtValue.text = secNum;
    }
    else
    {
      firstNum += val;
      txtValue.text = firstNum;
    }
    print("1st No: $firstNum");
    print("2nd No: $secNum");
    print("txtvalue: ${txtValue.text}");
  }

  OpePress(String Operation,String selOp)
  {
    isOpClicked = true;
    selectedOpClicked = selOp;
    txtValue.text += Operation;
    print("txtvalue: ${txtValue.text}");

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: const Text(
          "Calculator",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xd719a28d),
      ),

      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 270,
            color: Colors.white70,
            child: Padding(
              padding:  const EdgeInsets.only(bottom: 10),
              child: TextFormField(
                controller :txtValue,
                textAlign: TextAlign.end,
                style: const TextStyle(fontSize: 60,fontWeight: FontWeight.bold,),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 631,
            color: Colors.white70,

            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 5),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              txtValue.clear();
                              firstNum = "";
                              secNum = "";
                              selectedOpClicked = "";
                              isOpClicked = false;
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xd719a28d),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                            ),
                            child: const Text('C',style:TextStyle(fontSize: 40, color: Colors.white),
                            ),
                          ),
                        ),
                      ), // C
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: ElevatedButton(
                            onPressed: () {

                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xd719a28d),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                            child: const Text('⌫',style:TextStyle(fontSize: 35, color: Colors.white),
                            ),
                          ),
                        ),
                      ), // ()
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              isOpClicked = true;
                              selectedOpClicked = "Percentage";
                              txtValue.text += "%";
                              print("txtvalue : ${txtValue.text}");

                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xd719a28d),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                            ),
                            child: const Text( '%', style:TextStyle(fontSize: 40, color: Colors.white),
                            ),
                          ),
                        ),
                      ), // %
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              OpePress("÷","Division");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:Color(0xd719a28d),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                            ),
                            child: const Text('÷', style: TextStyle(fontSize: 60, color: Colors.white),
                            ),
                          ),
                        ),
                      ), //÷
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 5),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              NumPress("7");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xd719a28d),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                            ),
                            child: const Text('7', style:TextStyle(fontSize: 40, color: Colors.white),
                            ),
                          ),
                        ),
                      ), // 7
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              NumPress("8");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xd719a28d),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                            ),
                            child: const Text(  '8', style:TextStyle(fontSize: 40, color: Colors.white),
                            ),
                          ),
                        ),
                      ), // 8
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              NumPress("9");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xd719a28d),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                            ),
                            child: const Text( '9',style:TextStyle(fontSize: 40, color: Colors.white),
                            ),
                          ),
                        ),
                      ), // 9
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              OpePress("×","Multiple");

                              // isOpClicked = true;
                              // selectedOpClicked = "Multiple";
                              // txtValue.text += "×";
                              // print("txtvalue: ${txtValue.text}");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xd719a28d),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                            ),
                            child: const Text( '×',style:TextStyle(fontSize: 60, color: Colors.white),
                            ),
                          ),
                        ),
                      ), //×
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 5),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              NumPress("4");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xd719a28d),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                            ),
                            child: const Text('4',style:TextStyle(fontSize: 40, color: Colors.white),
                            ),
                          ),
                        ),
                      ), // 4
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              NumPress("5");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xd719a28d),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                            ),
                            child: const Text( '5', style:TextStyle(fontSize: 40, color: Colors.white),
                            ),
                          ),
                        ),
                      ), // 5
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              NumPress("6");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:Color(0xd719a28d),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                            ),
                            child: const Text('6', style: TextStyle(fontSize: 40, color: Colors.white),
                            ),
                          ),
                        ),
                      ), // 6
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              OpePress("-","minus");
                              // isOpClicked = true;
                              // selectedOpClicked = "minus";
                              // txtValue.text += "-";
                              // print("txtvalue: ${txtValue.text}");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xd719a28d),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                            ),
                            child: const Text( '−',style: TextStyle(fontSize: 60, color: Colors.white),
                            ),
                          ),
                        ),
                      ), //−
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              NumPress("1");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xd719a28d),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                            ),
                            child: const Text('1',style:TextStyle(fontSize: 40, color: Colors.white),
                            ),
                          ),
                        ),
                      ), // 1
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              NumPress("2");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xd719a28d),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                            ),
                            child: const Text('2', style:TextStyle(fontSize: 40, color: Colors.white),
                            ),
                          ),
                        ),
                      ), // 2
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              NumPress("3");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:Color(0xd719a28d),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                            ),
                            child: const Text( '3',  style: TextStyle(fontSize: 40, color: Colors.white),
                            ),
                          ),
                        ),
                      ), // 3
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              OpePress("+","Add");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xd719a28d),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                            ),
                            child: const Text('+',style:TextStyle(fontSize: 60, color: Colors.white),
                            ),
                          ),
                        ),
                      ), //+
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 5),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              isOpClicked = true;
                              selectedOpClicked = "Add/minus";
                              if(int.parse(txtValue.text).isNegative)
                              {
                                txtValue.text = int.parse(txtValue.text).abs().toString();
                              }
                              else
                              {
                                txtValue.text = "-" + txtValue.text;
                              }
                              //txtValue.text = "+/-";
                              print("txtvalue: ${txtValue.text}");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xd719a28d),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                            ),
                            child: const Text( '+/−',style: TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        ),
                      ), // +/−
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              NumPress("0");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:Color(0xd719a28d),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                            ),
                            child: const Text('0',style: TextStyle(fontSize: 40, color: Colors.white),
                            ),
                          ),
                        ),
                      ), // 0
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              print("Op clicked or not: $isOpClicked");
                              if(isOpClicked) {
                                secNum += ".";
                                txtValue.text = secNum;
                              }
                              else
                              {
                                firstNum += ".";
                                txtValue.text = firstNum;
                              }
                              print("1st No: $firstNum");
                              print("2nd No: $secNum");
                              print("txtvalue: ${txtValue.text}");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xd719a28d),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45),
                              ),
                            ),
                            child: const Text('.',  style:TextStyle(fontSize: 60, color: Colors.white),
                            ),
                          ),
                        ),
                      ), // .
                      Padding(
                        padding: const EdgeInsets.all( 5),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: SizedBox(
                            width: 90,
                            height: 90,
                            child: ElevatedButton(
                              onPressed: () {
                                double num1 = double.parse(firstNum);
                                double num2 = double.parse(secNum);
                                double result=0;
                                if(selectedOpClicked == "Add")
                                {
                                  result = num1 + num2;
                                }
                                if(selectedOpClicked == "minus")
                                {
                                  result = num1 -  num2;
                                }
                                if(selectedOpClicked == "Multiple")
                                {
                                  result = num1 *  num2;
                                }
                                if(selectedOpClicked == "Division")
                                {
                                  result = (num1 /  num2);
                                }
                                if(selectedOpClicked == "Add/minus")
                                {
                                  result = (num1 +- num2);
                                }
                                if(selectedOpClicked == "Percentage")
                                {
                                  result = (num1  /100);
                                }
                                txtValue.text = result.toString();
                                firstNum = result.toString();
                                secNum = "";
                                isOpClicked = false;
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.greenAccent.shade200,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(45),
                                ),
                              ),
                              child: const Text(  '=',style:TextStyle(fontSize: 60, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ), //=
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],

      ),
    );











  }

}