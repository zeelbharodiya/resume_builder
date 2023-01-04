import 'package:flutter/material.dart';

import 'global.dart';


class B4page extends StatefulWidget {
  const B4page({Key? key}) : super(key: key);

  @override
  State<B4page> createState() => _B4pageState();
}

class _B4pageState extends State<B4page> {

  TextEditingController courseController = TextEditingController(text: Global.course);
  TextEditingController schoolController = TextEditingController(text: Global.school);
  TextEditingController colllageController = TextEditingController(text: (Global.cgpa != null) ? Global.cgpa.toString() : null);
  TextEditingController yearController = TextEditingController(text: (Global.year != null) ? Global.year.toString() : null);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
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
                      Text("Education",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
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
                      height: MediaQuery.of(context).size.height / 1.4,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Form(
                              key: formKey,
                              child: Column(
                                crossAxisAlignment:CrossAxisAlignment.start,
                                children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                                      child: Text(
                                        "Course/Degree",
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                                      child: TextFormField(
                                        controller: courseController,
                                        textInputAction: TextInputAction.next,
                                        onSaved: (val) {
                                          setState(() {
                                            Global.course = val;
                                          });
                                        },
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: "B.C.A Information Technology",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[400],
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                          border: OutlineInputBorder(),
                                        ),
                                        validator: (val){
                                          if(val!.isEmpty){
                                            return "Please enter course...";
                                          }
                                        },
                                      ),
                                    ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
                                    child: Text(
                                      "School/Collage/Institute",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                                    child: TextFormField(
                                      controller: schoolController,
                                      textInputAction: TextInputAction.next,
                                      onSaved: (val) {
                                        setState(() {
                                          Global.school = val;
                                        });
                                      },
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(10),
                                        hintText: "V.N.S.G.U University",
                                        hintStyle: TextStyle(
                                            color: Colors.grey[400],
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                        border: OutlineInputBorder(),
                                      ),
                                      validator: (val){
                                        if(val!.isEmpty){
                                          return "Please enter school...";
                                        }
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
                                    child: Text(
                                      "School/Collage/Institute",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                                    child: TextFormField(
                                      controller: colllageController,
                                      textInputAction: TextInputAction.next,
                                      onSaved: (val) {
                                        setState(() {
                                          Global.cgpa = val;
                                        });
                                      },
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(10),
                                        hintText: "70% (or) 7.0 CGPA",
                                        hintStyle: TextStyle(
                                            color: Colors.grey[400],
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                        border: OutlineInputBorder(),
                                      ),
                                      validator: (val){
                                        if(val!.isEmpty){
                                          return "Please enter cgpa...";
                                        }
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
                                    child: Text(
                                      "Year Of Pass",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                                    child: TextFormField(
                                      controller: yearController,
                                      textInputAction: TextInputAction.next,
                                      onSaved: (val) {
                                        setState(() {
                                          Global.year = val;
                                        });
                                      },
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(10),
                                        hintText: "2021",
                                        hintStyle: TextStyle(
                                            color: Colors.grey[400],
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                        border: OutlineInputBorder(),
                                      ),
                                      validator: (val){
                                        if(val!.isEmpty){
                                          return "Please enter year...";
                                        }
                                      },
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      ElevatedButton(onPressed: () {
                                        setState(() {
                                            if(formKey.currentState!.validate()) {
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

                                              courseController.clear();
                                              schoolController.clear();
                                              colllageController.clear();
                                              yearController.clear();

                                            }
                                        });
                                      }, child: Text("SAVE",style: TextStyle(fontSize: 20),),),
                                      OutlinedButton(onPressed: () {
                                        setState(() {
                                          courseController.clear();
                                          schoolController.clear();
                                          colllageController.clear();
                                          yearController.clear();

                                          Global.course = null;
                                          Global.school = null;
                                          Global.cgpa = null;
                                          Global.year = null;
                                        });
                                      }, child: Text("Reset",style: TextStyle(fontSize: 20),),),

                                    ],
                                  ),
                                ],
                              ),
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
