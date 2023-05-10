import 'package:flutter/material.dart';

class Exam11 extends StatefulWidget {
   Exam11({Key? key}) : super(key: key);



  TextEditingController txtValue = TextEditingController();

  @override
  State<Exam11> createState() => _Exam11State();
}

class _Exam11State extends State<Exam11> {

  List<int> numbers = <int>[1,2,3,4,5];

  var compare = (a,b) => -a.compareTo(b);
  var compare1 = (b, a) => -a.compareTo(b);

  var result;
  String textValue = "";
  Sort()
  {
    numbers.sort();
  }
  final txtNumber = TextEditingController();
  @override
  void dispose() {
    txtNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body :
      Column(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      const Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Text("Enter Count :",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1,
                              color: Color(0xff000000),
                            )),
                      ),
                      Padding(
                        padding:  const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 50,
                          width: 150,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            controller: txtNumber,
                            onChanged: (d) {
                            },
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                                hintText: "enter the number", border: OutlineInputBorder()),
                          ),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      var length;
                      textValue = length.list;
                      
                       numbers.sort((b,a ) => a.compareTo(b));
                       print(numbers);
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xd719a28d),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('GO',style:TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),),
          Expanded(
            flex: 3,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    margin: const EdgeInsets.all(2),
                    color: Colors.cyan,
                    child: Center(
                        child: Text(
                          '${numbers[index]}',
                          style: const TextStyle(fontSize: 24, color: Colors.white),
                        )),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Center(
              child: Expanded(
                flex: 4,
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xd719a28d),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text('Calculate',style:TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



