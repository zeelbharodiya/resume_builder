import 'package:flutter/material.dart';

import 'global.dart';


class B9page extends StatefulWidget {
  const B9page({Key? key}) : super(key: key);

  @override
  State<B9page> createState() => _B9pageState();
}

class _B9pageState extends State<B9page> {

  int Z = 1;
  List <TextEditingController> Y = [];

  bool c = true;
  double a = 2.3;


  // TextEditingController skillController = TextEditingController(text: Global.achieve.toString());

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void initState() {
    super.initState();
    Y.add(TextEditingController());
    Y.add(TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 27,
                      ),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 4,
                      ),
                      Text(
                        "Achievements",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.grey[200],
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / a,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Form(
                            key: formKey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(22),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Enter Achievements",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.grey[500],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(25, 15, 10, 15),
                                  child:
                                  Column(
                                    children: [...Y.map((e) =>
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: TextFormField(
                                                controller: e,
                                                onSaved: (val) {
                                                  setState(() {
                                                    Global.achieve.add(val);
                                                  });
                                                } ,
                                                decoration: InputDecoration(
                                                  hintText: "Exceeded sales 17% avearage",
                                                  hintStyle: TextStyle(color: Colors.grey[400],fontSize: 19),
                                                ),
                                                validator: (val) {
                                                  if(val!.isEmpty){
                                                    return "Please enter institute...";
                                                  }
                                                },
                                              ),
                                            ),

                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            Y.remove(e);
                                            a+= 0.22;
                                          });
                                        },
                                        icon: Icon(Icons.delete_outline,size: 35,),
                                      ),
                                        ],
                                        ),
                                    ).toList(),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(25),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        Y.add(TextEditingController());

                                        a-= 0.23;
                                      });
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.height / 15,
                                      child: Icon(Icons.add,color: Colors.grey[400],size: 45,),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if(formKey.currentState!.validate()){
                                      formKey.currentState!.save();
                                      final message = SnackBar(
                                        content: Text("Your data is Saved"),
                                        action: SnackBarAction(label: "OK", onPressed: () {

                                        },),
                                        backgroundColor: Colors.green,
                                        behavior: SnackBarBehavior.floating,
                                        elevation: 10,
                                        duration: Duration(seconds: 1),
                                      );
                                      ScaffoldMessenger.of(context).showSnackBar(message);

                                      // Y.forEach((e) {
                                      //   Global.achieve.add(e.text);
                                      // });
                                      print(Global.achieve);
                                    }
                                  });
                                },
                                child: Text(
                                  "SAVE",
                                  style: TextStyle(fontSize: 20),
                                ),),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {

                                  });
                                },
                                child: Text(
                                  "Reset",
                                  style: TextStyle(fontSize: 20),
                                ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

