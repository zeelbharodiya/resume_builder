import 'package:flutter/material.dart';

import 'global.dart';



class B2page extends StatefulWidget {
  const B2page({super.key});

  @override
  State<B2page> createState() => _B2pageState();
}

class _B2pageState extends State<B2page> {

  GlobalKey<FormState> formKey1 = GlobalKey<FormState>();
  GlobalKey<FormState> formKey2 = GlobalKey<FormState>();

  TextEditingController carrersController = TextEditingController(text: Global.career);
  TextEditingController designationsController = TextEditingController(text: Global.desiganation);

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
                      SizedBox(width: MediaQuery.of(context).size.width / 4.5,),
                      Text("Carrier Objective",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
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
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Form(
                        key: formKey1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text("Career Objective",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                              child: TextFormField(
                                controller: carrersController,
                                maxLines: 7,
                                textInputAction: TextInputAction.next,
                                onSaved: (val) {
                                  setState(() {
                                    Global.career = val;
                                  });
                                },
                                decoration: InputDecoration(
                                  hintText: "Discripation",
                                  hintStyle: TextStyle(
                                      fontSize: 20, color: Colors.grey[500]),
                                  border: OutlineInputBorder(
                                  ),
                                ),
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please enter career obj...";
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 4.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Form(
                        key: formKey2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                              child: Text("Current Designation (Experienced \nCandidate)",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: TextFormField(
                                controller: designationsController,
                                textInputAction: TextInputAction.next,
                                onSaved: (val) {
                                  setState(() {
                                    Global.desiganation = val;
                                  });
                                },
                                decoration: InputDecoration(
                                  hintText: "Software Engineer",
                                  hintStyle: TextStyle(
                                      fontSize: 20, color: Colors.grey[500]),
                                  border: OutlineInputBorder(
                                  ),
                                ),
                                validator: (val){
                                  if(val!.isEmpty){
                                    return "Please enter designation...";
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if(formKey1.currentState!.validate() && formKey2.currentState!.validate()){
                              formKey1.currentState!.save();
                              formKey2.currentState!.save();
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

                              carrersController.clear();
                              designationsController.clear();

                            }
                          });
                        },
                        child: Text("Save",style: TextStyle(fontSize: 20,),),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          setState(() {
                            carrersController.clear();
                            designationsController.clear();

                            Global.career = null;
                            Global.desiganation = null;
                          });
                        },
                        child: Text("Reset",style: TextStyle(fontSize: 20,),),
                      ),
                    ],
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



