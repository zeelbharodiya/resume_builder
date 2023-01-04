import 'package:flutter/material.dart';
import 'package:resume/global.dart';
import 'package:intl/intl.dart';

class B3page extends StatefulWidget {
  const B3page({Key? key}) : super(key: key);

  @override
  State<B3page> createState() => _B3pageState();
}

class _B3pageState extends State<B3page> {
  String? marital;
  String single = "Single";
  String married = "Married";



  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //
  //   Global.marital;
  // }

  bool a = true;
  bool b = true;

  bool checkboxVal = false;
  // bool hindi = false;
  // bool english = false;
  // bool gujarati = false;

  List<String> languages = [];

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController nationalityController = TextEditingController(text: Global.nationality);
  TextEditingController txtController = TextEditingController(text: Global.dob);



  void _selDatePicker() {
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
        txtController.text = DateFormat('dd/MM/yyyy').format(pickedDate);
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
                        width: MediaQuery.of(context).size.width / 25,
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
                        width: MediaQuery.of(context).size.width / 5,
                      ),
                      Text(
                        "Personal Details",
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
                        children: [
                          Form(
                            key: formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 25, 25, 0),
                                  child: Text(
                                    "DOB",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 10, 25, 10),
                                  child: TextFormField(
                                    // textInputAction: TextInputAction.next,
                                    onTap: _selDatePicker,
                                    controller: txtController,
                                    onSaved: (val) {
                                      setState(() {
                                        Global.dob = val;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(14),
                                      hintText: "DD/MM/YYYY",
                                      hintStyle: TextStyle(
                                          color: Colors.grey[500],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please enter dob...";
                                      }
                                    },
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 10, 25, 0),
                                  child: Text(
                                    "Marital Status",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  height:
                                      MediaQuery.of(context).size.height / 28,
                                  child: RadioListTile(
                                    title: Text(
                                      "Single",
                                      style: TextStyle(
                                          color: (a)
                                              ? Colors.grey[500]
                                              : Colors.blue,
                                          fontSize: 20),
                                    ),
                                    value: single,
                                    groupValue: Global.marital,
                                    onChanged: (val) {
                                      setState(() {
                                        Global.marital = val;
                                      });
                                      a = false;
                                      b = true;
                                    },
                                  ),
                                ),
                                RadioListTile(
                                  title: Text(
                                    "Married",
                                    style: TextStyle(
                                        color: (b)
                                            ? Colors.grey[500]
                                            : Colors.blue,
                                        fontSize: 20),
                                  ),
                                  value: married,
                                  groupValue: Global.marital,
                                  onChanged: (val) {
                                    setState(() {
                                      Global.marital = val;

                                    });
                                    b = false;
                                    a = true;
                                  },
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                  child: Text(
                                    "Languages Known",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  height:
                                      MediaQuery.of(context).size.height / 28,
                                  child: CheckboxListTile(
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      activeColor: Colors.blue,
                                      title: Text(
                                        "Hindi",
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 20),
                                      ),
                                      value: Global.hindi,
                                      onChanged: (val) {
                                        setState(() {
                                       Global.hindi = val!;
                                          // (hindi)
                                          //     ? languages.add("Hindi")
                                          //     : languages.remo   ve("Hindi");
                                          print(languages);
                                        });
                                      }),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  height:
                                      MediaQuery.of(context).size.height / 28,
                                  child: CheckboxListTile(
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      activeColor: Colors.blue,
                                      title: Text(
                                        "English",
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 20),
                                      ),
                                      value: Global.english,
                                      onChanged: (val) {
                                        setState(() {
                                          Global.english = val!;
                                          // (english)
                                          //     ? languages.add("English")
                                          //     : languages.remove("English");
                                          print(languages);
                                        });
                                      }),
                                ),
                                CheckboxListTile(
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                    activeColor: Colors.blue,
                                    title: Text(
                                      "Gujarati",
                                      style: TextStyle(
                                          color: Colors.grey[500],
                                          fontSize: 20),
                                    ),
                                    value: Global.gujarati,
                                    onChanged: (val) {
                                      setState(() {
                                        Global.gujarati = val!;
                                        // (gujarati)
                                        //     ? languages.add("Gujarati")
                                        //     : languages.remove("Gujarati");
                                        print(languages);
                                      });
                                    }),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 0, 25, 0),
                                  child: Text(
                                    "Nationality",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 15, 25, 10),
                                  child: TextFormField(
                                    controller: nationalityController,
                                    textInputAction: TextInputAction.next,
                                    onSaved: (val) {
                                      setState(() {
                                        Global.nationality = val;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(14),
                                      hintText: "Indian",
                                      hintStyle: TextStyle(
                                          color: Colors.grey[500],
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return "Please enter nationality";
                                      }
                                    },
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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

                                            nationalityController.clear();
                                            txtController.clear();

                                            single = null.toString();
                                            married = null.toString();


                                            a = true;
                                            b = true;
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
                                          nationalityController.clear();
                                          txtController.clear();

                                          Global.dob = null;
                                          Global.marital = null;
                                          Global.nationality = null;
                                          Global.hindi = false;
                                          Global.english = false;
                                          Global.gujarati = false;
                                        });
                                      },
                                      child: Text(
                                        "Reset",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
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
      backgroundColor: Colors.white,
    );
  }
}
