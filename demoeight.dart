import 'package:flutter/material.dart';



class Wednesday extends StatelessWidget {
  const Wednesday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/yuxsatur.png"),
          fit: BoxFit.cover
          ),
        ),
        child:Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
          Center(
          child: Container(
          height: 100,
            width: 100,
            decoration:BoxDecoration(
                border: Border.all(width: 1,color: Colors.black),
                borderRadius: BorderRadius.circular(150),
                image: DecorationImage(
                    image: AssetImage("assets/yuxastur.png"),
                    fit: BoxFit.cover

                )


            ),



            // child: Image(image: AssetImage("assets/png.jpeg"),),
          ),
      ),
              Text("YUXASTUR",style: TextStyle(fontSize: 30),),
              Text("NUTRITION",style: TextStyle(fontSize: 20,color:Colors.red ),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Admin"),
                      VerticalDivider(thickness: 3,color: Colors.red,),
                      Text("user")
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26,width: 1,),
                    borderRadius: BorderRadius.circular(20,),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Container(
                  height: 300,
                  width: 350,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey,width: 1)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50,
                          child: TextFormField(
                           decoration: InputDecoration(
                             prefixIcon: Icon(Icons.person,),
                             hintText: ("User Name"),
                             enabledBorder: OutlineInputBorder(
                               borderSide: BorderSide(width: 1,color: Colors.black87)
                             )
                           ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock,),
                                hintText: ("Password"),
                                suffixIcon: Icon(Icons.visibility),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 1,color: Colors.black87)
                                )
                            ),
                          ),
                        ),
                      ),
                      // CircleAvatar(
                      //   backgroundColor:Colors.red ,
                      //
                      //   radius: 50,
                      //   child: Text("Login"),
                      // ),



                      GestureDetector(

                        onTap: ()
                        {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => const Run ()),
                          // );

                        },

                        child: Container(
                          height: 90,
                            width: 90,

                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              stops: [0.1, 0.5, 0.7, 0.9],
                              colors: [
                               Colors.black,
                                Colors.redAccent,

                                Colors.redAccent,
                                Colors.black,
                              ],
                            ),

                            shape: BoxShape.circle,
                            border: Border.all(),
                             color: Colors.red,
                           // borderRadius: BorderRadius.circular(10,)

                          ),
                          child: Center(child: Text("Login",style: TextStyle(fontSize: 17),)),

                         // TextStyle(fontSize: 25,color: Colors.black87),),

                              //child: Text("login"))
                         ),
                      ),
                    ],
                  ),

                ),
              ),


              // ElevatedButton(onPressed: ()
              // {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => const Terminal()),
              //   );
              //
              //        },
              //     child: Text("Login")),



          ],
      ),
        ),
        
    ),
    );
  }
}
