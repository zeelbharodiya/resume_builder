import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'global.dart';

class B1page extends StatefulWidget {
  const B1page({super.key});

  @override
  State<B1page> createState() => _B1pageState();
}

class _B1pageState extends State<B1page> {
  bool a = true;
  bool b = true;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  File? file;
  ImagePicker  pick = ImagePicker();

  getImageFromGallary() async{
    final file = await pick.pickImage(source: ImageSource.gallery);
    if(file != null){
      setState(() {
        Global.image = File(file!.path);
      });
    }
  }
  // getImageFromGallary() async {
  //   ImagePicker pick = ImagePicker();
  //    XFile? file = await pick.pickImage(source: ImageSource.gallery);
  //
  //   if(file != null){
  //     setState(() {
  //       Global.image = File(file!.path);
  //     });
  //   }
  // }

  // getImageFromGallary() async {
  //   file = await image.pickImage(source: ImageSource.gallery);
  // }

  TextEditingController nameController = TextEditingController(text: Global.name);
  TextEditingController emailController = TextEditingController(text: Global.email);
  TextEditingController phoneController = TextEditingController(text: (Global.contact != null) ? Global.contact.toString() : null);
  TextEditingController addressController = TextEditingController(text: Global.address);
  TextEditingController address2Controller = TextEditingController(text: Global.addl1);
  TextEditingController address3Controller = TextEditingController(text: Global.addl2);
  // TextEditingController imageController = TextEditingController(text: Global.image);
  // TextEditingController fileController = TextEditingController(text: Global.file.toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 75,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 27,
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
                        width: MediaQuery
                            .of(context)
                            .size
                            .width / 7,
                      ),
                      Text(
                        "Resume Workspace",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              a = true;
                              b = true;
                            });
                          },
                          child: Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width / 2.1,
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height / 14,
                              alignment: Alignment.center,
                              child: Text(
                                "Contact",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ))),
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              a = false;
                              b = false;
                            });
                          },
                          child: Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 2.1,
                            height: MediaQuery
                                .of(context)
                                .size
                                .height / 14,
                            alignment: Alignment.center,
                            child: Text(
                              "Photo",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          )),
                    ],
                  ),
                  Container(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Divider(
                          thickness: 4,
                          color: (a) ? Colors.yellow : Colors.blue,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Divider(
                          thickness: 4,
                          color: (a) ? Colors.blue : Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              color: Colors.grey[200],
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  (b)
                      ? Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height / 1.5,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Form(
                          key: formKey,
                          child: Column(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
                              TextFormField(
                                controller: nameController,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.text,
                                onSaved: (val) {
                                  setState(() {
                                    Global.name = val;
                                  });
                                },
                                decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.person,
                                    size: 40,
                                  ),
                                  hintText: "Name",
                                  hintStyle: TextStyle(
                                      fontSize: 17, color: Colors.grey),
                                ),
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please enter name...";
                                  }
                                },
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              TextFormField(
                                controller: emailController,
                                textInputAction: TextInputAction.next,
                                onSaved: (val) {
                                  setState(() {
                                    Global.email = val;
                                  });
                                },
                                decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.email,
                                    size: 40,
                                  ),
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                      fontSize: 17, color: Colors.grey),
                                ),
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please enter email...";
                                  }
                                },
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              TextFormField(
                                controller: phoneController,
                                onSaved: (val) {
                                  setState(() {
                                    Global.contact = int.parse(val!);
                                  });
                                },
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.phone_android_sharp,
                                    size: 40,
                                  ),
                                  hintText: "Phone",
                                  hintStyle: TextStyle(
                                      fontSize: 17, color: Colors.grey),
                                ),
                                validator: (val) {
                                  if (val!.length == 10) {
                                    return null;
                                  } else if (val.isEmpty) {
                                    return "Please enter contact...";
                                  } else {
                                    return "Invalid number";
                                  }
                                },
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              TextFormField(
                                controller: addressController,
                                textInputAction: TextInputAction.next,
                                onSaved: (val) {
                                  setState(() {
                                    Global.address = val;
                                  });
                                },
                                decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.location_on,
                                    size: 40,
                                  ),
                                  hintText:
                                  "Address (Street, Building No)",
                                  hintStyle: TextStyle(
                                      fontSize: 17, color: Colors.grey),
                                ),
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please enter address...";
                                  }
                                },
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    54, 0, 0, 0),
                                child: TextFormField(
                                  controller: address2Controller,
                                  textInputAction: TextInputAction.next,
                                  onSaved: (val) {
                                    setState(() {
                                      Global.addl1 = val;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    hintText: "Address Line 2",
                                    hintStyle: TextStyle(
                                        fontSize: 17, color: Colors.grey),
                                  ),
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please enter add line 1...";
                                    }
                                  },
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    54, 0, 0, 20),
                                child: TextFormField(
                                  controller: address3Controller,
                                  textInputAction: TextInputAction.next,
                                  onSaved: (val) {
                                    setState(() {
                                      Global.addl2 = val;
                                    });
                                  },
                                  decoration: InputDecoration(
                                    hintText: "Address Line 3",
                                    hintStyle: TextStyle(
                                        fontSize: 17, color: Colors.grey),
                                  ),
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please enter add line 2...";
                                    }
                                  },
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        if (formKey.currentState!.validate()) {
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

                                          nameController.clear();
                                          emailController.clear();
                                          phoneController.clear();
                                          addressController.clear();
                                          address2Controller.clear();
                                          address3Controller.clear();
                                        }
                                      });
                                    },
                                    child: Text(
                                      "Save", style: TextStyle(fontSize: 20,),),
                                  ),
                                  OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        nameController.clear();
                                        emailController.clear();
                                        phoneController.clear();
                                        addressController.clear();
                                        address2Controller.clear();
                                        address3Controller.clear();

                                        Global.name = null;
                                        Global.email = null;
                                        Global.contact = null;
                                        Global.address = null;
                                        Global.addl1 = null;
                                        Global.addl2 = null;
                                      });
                                    },
                                    child: Text("Reset",
                                      style: TextStyle(fontSize: 20,),),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                      : Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          height: MediaQuery
                              .of(context)
                              .size
                              .height / 3,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Stack(
                              alignment: Alignment(1,0.8),
                              children: [
                                (Global.image != null) ?
                                 CircleAvatar(
                                  radius: 95,
                                  backgroundColor: Colors.grey[400],
                                  backgroundImage:
                                  (Global.image !=  null) ? FileImage(Global.image!) : null,
                                )
                                : Image.asset("assets/images/14.jpg",) ,
                                FloatingActionButton(
                                    mini: true,
                                    child: Icon(Icons.add,size: 35,),
                                    onPressed: () {
                                      setState(() {
                                        // getImageFromCamera();
                                        getImageFromGallary();
                                      });
                                    }
                                ),

                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if(Global.image != null){
                                      final message = SnackBar(
                                        content: Text("Your image is Saved"),
                                        action: SnackBarAction(label: "OK", onPressed: () {

                                        },),
                                        backgroundColor: Colors.green,
                                        behavior: SnackBarBehavior.floating,
                                        elevation: 10,
                                        duration: Duration(seconds: 1),
                                      );
                                      ScaffoldMessenger.of(context).showSnackBar(message);
                                    }else{
                                      final message = SnackBar(
                                        content: Text("Please upload your image"),
                                        action: SnackBarAction(label: "OK", onPressed: () {

                                        },),
                                        backgroundColor: Colors.red,
                                        behavior: SnackBarBehavior.floating,
                                        elevation: 10,
                                        duration: Duration(seconds: 1),
                                      );
                                      ScaffoldMessenger.of(context).showSnackBar(message);
                                    }



                                  });
                                },
                                child: Text(
                                  "Save", style: TextStyle(fontSize: 20,),),
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    // imageController.clear();

                                    Global.image = null;
                                  });
                                },
                                child: Text("Reset",
                                  style: TextStyle(fontSize: 20,),),
                              ),
                            ],
                          ),
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
      // backgroundColor: Colors.white,
    );
    // Scaffold(
    //
    //   body: Column(
    //     children: [
    //       Expanded(
    //         // flex: 2,
    //         child: Container(
    //           width: MediaQuery.of(context).size.width,
    //           height: MediaQuery.of(context).size.height,
    //           color: Colors.blue,
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               Container(height: 75,),
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.start,
    //                 children: [
    //                   SizedBox(width: MediaQuery.of(context).size.width / 27,),
    //                   GestureDetector(
    //                       onTap: () {
    //                         setState(() {
    //                           Navigator.pop(context);
    //                         });
    //                       },
    //                       child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
    //                   SizedBox(width: MediaQuery.of(context).size.width / 7,),
    //                   Text("Resume Workspace",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
    //                 ],
    //               ),
    //               Spacer(),
    //               Text("Build Options",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
    //               Container(height: 25,),
    //             ],
    //           ),
    //         ),
    //       ),
    //       Expanded(
    //         flex: 3,
    //         child: Container(
    //           width: MediaQuery.of(context).size.width,
    //           height: MediaQuery.of(context).size.height,
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //             children: [
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    //   backgroundColor: Colors.white,
    // );
  }
}
