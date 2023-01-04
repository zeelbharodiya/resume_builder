import 'package:flutter/material.dart';
import 'package:resume/global.dart';
import 'package:resume/spage.dart';

import 'b1.dart';
import 'b10.dart';
// import 'b11.dart';
import 'b11.dart';
import 'b2.dart';
import 'b3.dart';
import 'b4.dart';
import 'b5.dart';
import 'b6.dart';
import 'b7.dart';
import 'b8.dart';
import 'b9.dart';




void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'Myapp',
      routes: {
        'Myapp':  (context) => const Myapp(),
        'Spage':  (context) => const Spage(),
        'B1page':  (context) => const B1page(),
        'B2page':  (context) => const B2page(),
        'B3page':  (context) => const B3page(),
        'B4page':  (context) => const B4page(),
        'B5page':  (context) => const B5page(),
        'B6page':  (context) => const B6page(),
        'B7page':  (context) => const B7page(),
        'B8page':  (context) => const B8page(),
        'B9page':  (context) => const B9page(),
        'B10page':  (context) => const B10page(),
        'B11page':  (context) => const B11page(),
      },
    ),
  );
}


class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Global.name;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,

      body: Column(
        children: [
          Expanded(
            // flex: 2,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(height: 45,),
                  Text("Resume Builder",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Text("RESUME",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Container(height: 25,),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(155, 155, 155, 10),
                    child: Image.asset("assets/images/12.png"),
                  ),
                  Text("No Resumes + Create new resume.",style: TextStyle(color: Colors.grey,fontSize: 20),),

                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add,size: 50,),
          onPressed: () {
            Navigator.pushNamed(context, 'Spage');
          }
      ),
    );
  }
}

