import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'global.dart';


class B11page extends StatefulWidget {
  const B11page({Key? key}) : super(key: key);

  @override
  State<B11page> createState() => _B11pageState();
}

class _B11pageState extends State<B11page> {

  bool mySwitchValue = false;
  bool r = true;
  bool q = true;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController desController = TextEditingController(text: Global.descripation);
  TextEditingController ddController = TextEditingController(text: Global.dd);
  TextEditingController placeController = TextEditingController(text: Global.place);

  void _gelDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2001),
        lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        ddController.text = DateFormat('dd-MM-yyyy').format(pickedDate);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            // flex: 2,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width / 35,),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                      SizedBox(width: MediaQuery.of(context).size.width / 5,),
                      Text("Declaration",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.grey[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  (r) ? Padding(
                    padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 10,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Declaration",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),),
                            Switch(
                                value: mySwitchValue,
                                onChanged: (val) {
                                  setState(() {
                                    mySwitchValue = val;
                                    if(val == true){
                                      r = false;
                                    }
                                    // else if(val == true){
                                    //   r = false;
                                    // }
                                  });
                                }
                            ),
                          ],
                        ),
                      ),
                    ),
                  ) :  Padding(
                    padding:  EdgeInsets.fromLTRB(25, 25, 25, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Declaration",style: TextStyle(color: Colors.blue,fontSize: 20,fontWeight: FontWeight.bold),),
                                Switch(
                                    value: mySwitchValue,
                                    onChanged: (val) {
                                      setState(() {
                                        mySwitchValue = val;
                                        if(val == false){
                                          r = true;
                                        }
                                      });
                                    }
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/images/13.png",height: 60),
                              ],
                            ),
                          ),
                          Form(
                            key: formKey,
                              child: Column(
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.all(20),
                                    child: TextFormField(
                                      controller: desController,
                                      onSaved: (val) {
                                        setState(() {
                                          Global.descripation = val;
                                        });
                                      },
                                      decoration: InputDecoration(
                                          hintText: "Descripation",
                                          hintStyle: TextStyle(
                                          fontSize: 20, color: Colors.grey[400]),
                                          border: OutlineInputBorder(
                                     ),
                                ),
                                validator: (val) {
                               if(val!.isEmpty){
                                    return "Enter your des...";
                                }
                              },
                                      ),
                                  ),
                                  Divider(
                                    thickness: 2,
                                    color: Colors.black,
                                    endIndent: 20,
                                      indent: 20,
                                  ),
                                  Row(
                                    children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                                        child: Text("Date\n ",style: TextStyle(color: Colors.grey[400],fontSize: 20,fontWeight: FontWeight.bold),),
                                      ),
                                      Container(
                                        height: MediaQuery.of(context)
                                            .size
                                            .height /
                                            9,
                                        width: MediaQuery.of(context)
                                            .size
                                            .width /
                                            2.4,
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                                          child: TextFormField(
                                            onTap: _gelDatePicker,
                                            controller: ddController,
                                            onSaved: (val) {
                                              setState(() {
                                                Global.dd = val;
                                              });
                                            },
                                            decoration: InputDecoration(
                                              contentPadding: EdgeInsets.all(12),
                                              hintText: "DD/MM/YYYY",
                                              hintStyle: TextStyle(
                                                  fontSize: 20, color: Colors.grey[400]),
                                              border: OutlineInputBorder(
                                              ),
                                            ),
                                            validator: (val) {
                                              if(val!.isEmpty){
                                                return "Enter project date...";
                                              }
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                                            child: Text("Place(Interview\nvenue/city)",style: TextStyle(color: Colors.grey[400],fontSize: 20,fontWeight: FontWeight.bold),),
                                          ),
                                          Container(
                                            height: MediaQuery.of(context)
                                                .size
                                                .height /
                                                9,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width /
                                                2.4,
                                            child: Padding(
                                              padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                                              child: TextFormField(
                                                controller: placeController,
                                                onSaved: (val) {
                                                  setState(() {
                                                    Global.place = val;
                                                  });
                                                },
                                                decoration: InputDecoration(
                                                  contentPadding: EdgeInsets.all(12),
                                                  hintText: "Eg.Surat",
                                                  hintStyle: TextStyle(
                                                      fontSize: 20, color: Colors.grey[400]),
                                                  border: OutlineInputBorder(
                                                  ),
                                                ),
                                                validator: (val) {
                                                  if(val!.isEmpty){
                                                    return "Enter project place...";
                                                  }
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                ],
                              ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              if (formKey.currentState!
                                                  .validate()) {
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

                                                desController.clear();
                                                ddController.clear();
                                                placeController.clear();
                                              }
                                            });
                                          },
                                          child: Text(
                                            "SAVE",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                        OutlinedButton(
                                          onPressed: () {
                                            setState(() {
                                              desController.clear();
                                              ddController.clear();
                                              placeController.clear();

                                              Global.descripation = null;
                                              Global.dd = null;
                                              Global.place = null;
                                            });
                                          },
                                          child: Text(
                                            "Reset",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                            ],
                           ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
