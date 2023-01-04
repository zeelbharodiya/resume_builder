import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'global.dart';

class B5page extends StatefulWidget {
  const B5page({Key? key}) : super(key: key);

  @override
  State<B5page> createState() => _B5pageState();
}

class _B5pageState extends State<B5page> {

  String? empSTATUS;
  String previously = "Previously Employed";
  String currently = "Currently Employed";

  bool a = true;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController companyController = TextEditingController(text: Global.cname);
  TextEditingController instituteController = TextEditingController(text: Global.collage);
  TextEditingController rolesController = TextEditingController(text: Global.role);
  TextEditingController joinController = TextEditingController(text: Global.join);
  TextEditingController exitController = TextEditingController(text: Global.exit);

  void _joinDatePicker() {
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
        joinController.text = DateFormat('dd-MM-yyyy').format(pickedDate);
      });
    });
  }

  void _exitDatePicker() {
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
        exitController.text = DateFormat('dd-MM-yyyy').format(pickedDate);
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
                        "Experience",
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
                      height: MediaQuery.of(context).size.height / 1.35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Form(
                            key: formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 15, 25, 0),
                                  child: Text(
                                    "Company Name",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 5, 25, 0),
                                  child: TextFormField(
                                    controller: companyController,
                                    textInputAction: TextInputAction.next,
                                    onSaved: (val) {
                                      setState(() {
                                        Global.cname = val;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(14),
                                      hintText: "New Enterprise,San Francisco",
                                      hintStyle: TextStyle(
                                          color: Colors.grey[400],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (val){
                                      if(val!.isEmpty){
                                        return "Please enter company name...";
                                      }
                                    },
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 10, 25, 0),
                                  child: Text(
                                    "School/Collage/Institute",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 5, 25, 5),
                                  child: TextFormField(
                                    controller: instituteController,
                                    textInputAction: TextInputAction.next,
                                    onSaved: (val) {
                                      setState(() {
                                        Global.collage = val;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(14),
                                      hintText: "Quality Test Engineer",
                                      hintStyle: TextStyle(
                                          color: Colors.grey[400],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (val){
                                      if(val!.isEmpty){
                                        return "Please enter institute...";
                                      }
                                    },
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 5, 25, 0),
                                  child: Text(
                                    "Roles (Optional)",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 5, 25, 5),
                                  child: TextFormField(
                                    controller: rolesController,
                                    textInputAction: TextInputAction.next,
                                    maxLines: 2,
                                    onSaved: (val) {
                                      setState(() {
                                        Global.role = val;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(14),
                                      hintText:
                                          "Working with team membr and product analysis...",
                                      hintStyle: TextStyle(
                                          color: Colors.grey[400],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (val){
                                      if(val!.isEmpty){
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 0, 20, 0),
                                  child: Text("Employed Status"),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          2.3,
                                      // height: MediaQuery.of(context).size.height / 45,
                                      alignment: Alignment.topCenter,
                                      child: RadioListTile(
                                        title: Text(
                                          "Previously Employed",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 13),
                                        ),
                                        value: previously,
                                        groupValue: Global.status,
                                        onChanged: (val) {
                                          setState(() {
                                            Global.status = val;
                                            a = true;
                                          });
                                        },
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width /
                                          2.3,
                                      // height: MediaQuery.of(context).size.height / 28,
                                      child: RadioListTile(
                                        title: Text(
                                          "Currently Employed",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 13),
                                        ),
                                        value: currently,
                                        groupValue: Global.status,
                                        onChanged: (val) {
                                          setState(() {
                                            Global.status = val;
                                            a = false;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  thickness: 1,
                                  color: Colors.black,
                                  indent: 25,
                                  endIndent: 25,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "Date Joined",
                                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2.4,
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                25, 3, 25, 5),
                                            child: TextFormField(
                                              onTap: _joinDatePicker,
                                              controller: joinController,
                                              onSaved: (val) {
                                                setState(() {
                                                  Global.join = val;
                                                });
                                              },
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.all(10),
                                                hintText: "DD/MM/YYYY",
                                                hintStyle: TextStyle(
                                                    color: Colors.grey[400],
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                                border: OutlineInputBorder(),
                                              ),
                                              validator: (val){
                                                if(val!.isEmpty){
                                                  return "enter date...";
                                                }
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    (a) ?  Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 25),
                                          child: Text(
                                            "Date Exit",
                                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              2.4,
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                25, 3, 25, 5),
                                            child: TextFormField(
                                              onTap: _exitDatePicker,
                                              controller: exitController,
                                              onSaved: (val) {
                                                setState(() {
                                                  Global.exit = val;
                                                });
                                              },
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.all(10),
                                                hintText: "DD/MM/YYYY",
                                                hintStyle: TextStyle(
                                                    color: Colors.grey[400],
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                                border: OutlineInputBorder(),
                                              ),
                                              validator: (val){
                                                if(val!.isEmpty){
                                                  return "enter date...";
                                                }
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ) : Container(),
                                  ],
                                ),


                              ],
                            ),
                          ),
                          Expanded(
                              child:    Row(
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

                                          companyController.clear();
                                          instituteController.clear();
                                          rolesController.clear();
                                          joinController.clear();
                                          exitController.clear();
                                          // empSTATUS = null;
                                          previously = null.toString();
                                          currently = null.toString();

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
                                        companyController.clear();
                                        instituteController.clear();
                                        rolesController.clear();
                                        joinController.clear();
                                        exitController.clear();

                                        Global.cname = null;
                                        Global.collage = null;
                                        Global.role = null;
                                        Global.join = null;
                                        Global.exit = null;
                                        Global.status = null;
                                      });
                                    },
                                    child: Text(
                                      "Reset",
                                      style: TextStyle(fontSize: 20),
                                    ),),
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
      backgroundColor: Colors.white,
    );
  }
}
