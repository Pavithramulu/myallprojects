import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Agecalc extends StatefulWidget {
  Agecalc({Key? key}) : super(key: key);

  @override
  State<Agecalc> createState() => _AgecalcState();
}

class _AgecalcState extends State<Agecalc> {
  TextStyle txt = const TextStyle(fontSize: 20, color: Colors.white);
  String DD = "00", MM = "00", YYYY = "0000";

  int presentYear = 00;
  int presentMonth = 00;
  int presentDay = 00;

  int nMonth = 0;
  int nDay = 0;

  final datecontroller = TextEditingController();
  final monthcontroller = TextEditingController();
  final yearcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    DateTime currentDate = DateTime.now();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          "Age Calculator",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xd719a28d),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text("Enter Your Name",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          color: Color(0xff000000),
                        )),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 5)),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: h / 13,
                    width: w,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.only(left: 20),
                    child: TextFormField(
                        style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1C003E),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 15)),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text("Date of Birth",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                          color: Color(0xff000000),
                        )),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 0)),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          height: h / 13,
                          width: w / 3,
                          child: Align(
                            child: TextField(
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(02)
                              ],
                              keyboardType: TextInputType.number,
                              controller: datecontroller,
                              onChanged: (d) {
                                DD = d;
                                print("$DD");
                              },
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                  hintText: "DD", border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(right: 5)),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          height: h / 13,
                          width: w / 3,
                          child: Align(
                            child: TextField(
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(02)
                              ],
                              keyboardType: TextInputType.number,
                              controller: monthcontroller,
                              onChanged: (m) {
                                MM = m;
                                print("$MM");
                              },
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                  hintText: "MM", border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(right: 5)),
                      Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          height: h / 13,
                          width: w / 3,
                          child: Align(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(04)
                              ],
                              controller: yearcontroller,
                              onChanged: (y) {
                                YYYY = y;
                                print("$YYYY");
                              },
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                  hintText: "YYYY",
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 35)),
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
                              datecontroller.clear();
                              monthcontroller.clear();
                              yearcontroller.clear();
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
                              presentYear = currentDate.year - int.parse(YYYY);
                              presentMonth = currentDate.month - int.parse(MM);
                              presentDay = currentDate.day - int.parse(DD);
                              if(presentMonth.isNegative)
                              {
                                presentMonth = 12 - presentMonth.abs();
                              }
                              if(presentDay.isNegative)
                              {
                                presentDay = 30 - presentDay.abs();
                              }
                              // else (presentDay.isNegative)
                              //   {
                              //     presentDay = -30 - presentDay.abs();
                              //   }
                              // else if (presentDay.isNegative)
                              // {
                              //   presentDay = -28 - presentDay.abs();
                              // }

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
                                  "Calculate",
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
                    child: Text("Present Age",
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("$presentYear", style: txt),
                            // Text("$presentMonth", style: txt),
                            // Text("$presentDay", style: txt),
                            Text("Years", style: txt)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("$presentMonth", style: txt),
                            Text("Months", style: txt)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("$presentDay", style: txt),
                            Text("Days", style: txt)
                          ],
                        ),

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
