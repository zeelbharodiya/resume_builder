import 'package:flutter/material.dart';

import 'global.dart';


class B10page extends StatefulWidget {
  const B10page({Key? key}) : super(key: key);

  @override
  State<B10page> createState() => _B10pageState();
}

class _B10pageState extends State<B10page> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController refController = TextEditingController(text: Global.Rname);
  TextEditingController desController = TextEditingController(text: Global.desig);
  TextEditingController orgController = TextEditingController(text: Global.institute);

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
                  Container(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width / 27,),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                      SizedBox(width: MediaQuery.of(context).size.width / 3.5,),
                      Text("References",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height / 1.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Form(
                          key: formKey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(25, 25, 25, 0),
                                  child: Text(
                                    "Reference Name",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(25, 10, 25, 0),
                                  child: TextFormField(
                                    controller: refController,
                                    textInputAction: TextInputAction.next,
                                    onSaved: (val) {
                                      setState(() {
                                        Global.Rname = val;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(14),
                                      hintText: "Suresh Shah",
                                      hintStyle: TextStyle(
                                          color: Colors.grey[400],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please enter ref name...";
                                      }
                                    },
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(25, 10, 25, 0),
                                  child: Text(
                                    "Designation",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(25, 10, 25, 0),
                                  child: TextFormField(
                                    controller: desController,
                                    textInputAction: TextInputAction.next,
                                    onSaved: (val) {
                                      setState(() {
                                        Global.desig = val;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(14),
                                      hintText: "Marketing Manager, ID-342332",
                                      hintStyle: TextStyle(
                                          color: Colors.grey[400],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please enter designation...";
                                      }
                                    },
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(25, 10, 25, 0),
                                  child: Text(
                                    "Organization/Institute",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(25, 10, 25, 0),
                                  child: TextFormField(
                                    controller: orgController,
                                    textInputAction: TextInputAction.next,
                                    onSaved: (val) {
                                      setState(() {
                                        Global.institute = val;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(14),
                                      hintText: "Green Energy Pvt. Ltd",
                                      hintStyle: TextStyle(
                                          color: Colors.grey[400],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please enter ref name...";
                                      }
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: Row(
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

                                              refController.clear();
                                              desController.clear();
                                              orgController.clear();
                                            }
                                          });
                                        },
                                        child: Text("SAVE",style: TextStyle(fontSize: 20),),
                                      ),
                                      OutlinedButton(
                                        onPressed: () {
                                          setState(() {
                                            refController.clear();
                                            desController.clear();
                                            orgController.clear();

                                            Global.Rname = null;
                                            Global.desig = null;
                                            Global.institute = null;
                                          });
                                        },
                                        child: Text("Reset",style: TextStyle(fontSize: 20),),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                        ),
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
