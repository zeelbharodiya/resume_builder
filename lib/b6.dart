import 'package:flutter/material.dart';

import 'global.dart';

class B6page extends StatefulWidget {
  const B6page({Key? key}) : super(key: key);

  @override
  State<B6page> createState() => _B6pageState();
}

class _B6pageState extends State<B6page> {

  int Z = 1;
  List <TextEditingController> Y = [];

  bool c = true;
  double y = 2.3;


  // TextEditingController skillController = TextEditingController(text: Global.skill);


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
                        "Technical Skills",
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
                      height: MediaQuery.of(context).size.height / y,
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
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Enter your skills",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.grey[500],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(25, 0, 10, 0),
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
                                                    Global.skill.add(val);
                                                  });
                                                } ,
                                                decoration: InputDecoration(
                                                  hintText: "C Programing, Web Technical",
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
                                                    y+= 0.23;
                                                  });
                                                },
                                                icon: Icon(Icons.delete_outline,size: 35,),
                                            ),
                                                // Text("${e}",style: TextStyle(color: Colors.transparent),),


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
                                        // Map<String , dynamic> lol = {
                                        //   "icon": Icons.delete_outline,
                                        // };
                                        // Z++;
                                        Y.add(TextEditingController());
                                        y -= 0.23;
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
                                      //   Global.skill.add(e.text);
                                      // });
                                      print(Global.skill);
                                      // skillController.clear();
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
                                    // skillController.clear();

                                    // Global.skill = null;
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
