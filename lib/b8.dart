import 'package:flutter/material.dart';

import 'global.dart';


class B8page extends StatefulWidget {
  const B8page({Key? key}) : super(key: key);

  @override
  State<B8page> createState() => _B8pageState();
}

class _B8pageState extends State<B8page> {

  // bool checkboxVal = false;
  // bool c = false;
  // bool Cadd = false;
  // bool fluttr = false;
  // List<String> languages = [];

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController proController = TextEditingController(text: Global.ptitle);
  TextEditingController roleController = TextEditingController(text: Global.analysis);
  TextEditingController techController = TextEditingController(text: Global.tech);
  TextEditingController desController = TextEditingController(text: Global.prodes);

  
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
                      Text("Projects",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
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
              child:   Padding(
                padding: const EdgeInsets.all(17),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3.1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                          child: Text("Project Title",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 3, 20, 5),
                          child: TextFormField(
                            controller: proController,
                            textInputAction: TextInputAction.next,
                            onSaved: (val) {
                              setState(() {
                                Global.ptitle = val;
                              });
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              hintText: "Resume Builder App",
                              hintStyle: TextStyle(
                                  fontSize: 20, color: Colors.grey[400]),
                              border: OutlineInputBorder(
                              ),
                            ),
                            validator: (val) {
                              if(val!.isEmpty){
                                return "Enter project title...";
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: Text(
                            "Technologies",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 32,
                          child: CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: Colors.blue,
                              title: Text("C Programing",style: TextStyle(color: Colors.grey[500],fontSize: 20),),
                              value: Global.c,
                              onChanged: (val) {
                                setState(() {
                                  Global.c = val!;
                                  // (c) ? languages.add("C Programing") : languages.remove("C Programing");
                                  // print(languages);
                                });
                              }
                          ),
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.height / 32,
                          child: CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: Colors.blue,
                              title: Text("C++",style: TextStyle(color: Colors.grey[500],fontSize: 20),),
                              value: Global.cplus,
                              onChanged: (val) {
                                setState(() {
                                  Global.cplus = val!;
                                  // (Cadd) ? languages.add("C++") : languages.remove("C++");
                                  // print(languages);
                                });
                              }
                          ),
                        ),
                        CheckboxListTile(
                            controlAffinity: ListTileControlAffinity.leading,
                            activeColor: Colors.blue,
                            title: Text("Flutter",style: TextStyle(color: Colors.grey[500],fontSize: 20),),
                            value: Global.flutter,
                            onChanged: (val) {
                              setState(() {
                                Global.flutter = val!;
                                // (fluttr) ? languages.add("Flutter") : languages.remove("Flutter");
                                // print(languages);
                              });
                            }
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                          child: Text("Roles",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 3, 25, 10),
                          child: TextFormField(
                            controller: roleController,
                            textInputAction: TextInputAction.next,
                            onSaved: (val) {
                              setState(() {
                                Global.analysis = val;
                              });
                            },
                            maxLines: 2,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              hintText: "Organize team members,\nCode analysis",
                              hintStyle: TextStyle(
                                  fontSize: 20, color: Colors.grey[400]),
                              border: OutlineInputBorder(
                              ),
                            ),
                            validator: (val) {
                              if(val!.isEmpty){
                                return "Enter roles...";
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 3, 25, 0),
                          child: Text("Technolgies",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 5),
                          child: TextFormField(
                            controller: techController,
                            textInputAction: TextInputAction.next,
                            onSaved: (val) {
                              setState(() {
                                Global.tech = val;
                              });
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              hintText: "5 - rogramers",
                              hintStyle: TextStyle(
                                  fontSize: 20, color: Colors.grey[400]),
                              border: OutlineInputBorder(
                              ),
                            ),
                            validator: (val) {
                              if(val!.isEmpty){
                                return "Enter technologyes...";
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 4, 25, 0),
                          child: Text("Project Descripation",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 25, 5),
                          child: TextFormField(
                            controller: desController,
                            textInputAction: TextInputAction.next,
                            onSaved: (val) {
                              setState(() {
                                Global.prodes = val;
                              });
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              hintText: "Enter Your Project Descripation",
                              hintStyle: TextStyle(
                                  fontSize: 20, color: Colors.grey[400]),
                              border: OutlineInputBorder(
                              ),
                            ),
                            validator: (val) {
                              if(val!.isEmpty){
                                return "Enter descripation...";
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

                                        proController.clear();
                                        roleController.clear();
                                        techController.clear();
                                        desController.clear();


                                      }
                                    });
                                  },
                                  child: Text("SAVE",style: TextStyle(fontSize: 20),),
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    proController.clear();
                                    roleController.clear();
                                    techController.clear();
                                    desController.clear();

                                    Global.c = false;
                                    Global.cplus = false;
                                    Global.flutter = false;
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
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}




























