import 'package:flutter/material.dart';




class Spage extends StatefulWidget {
  const Spage({super.key});

  @override
  State<Spage> createState() => _SpageState();
}

class _SpageState extends State<Spage> {


  List <Map<String , dynamic>> A = [
    {
      'image': "assets/images/11.png",
      'T': "Contact info",
      'icon': Icons.arrow_forward_ios,
      'page':  "B1page",
    },
    {
      'image': "assets/images/10.png",
      'T': "Carrier Objective",
      'icon': Icons.arrow_forward_ios,
      'page':  "B2page",
    },
    {
      'image': "assets/images/9.png",
      'T': "Personal Details",
      'icon': Icons.arrow_forward_ios,
      'page':  "B3page",
    },
    {
      'image': "assets/images/8.png",
      'T': "Education",
      'icon': Icons.arrow_forward_ios,
      'page':  "B4page",
    },
    {
      'image': "assets/images/7.png",
      'T': "Experiences",
      'icon': Icons.arrow_forward_ios,
      'page':  "B5page",
    },
    {
      'image': "assets/images/6.1.png",
      'T': "Technical Skills",
      'icon': Icons.arrow_forward_ios,
      'page':  "B6page",
    },
    {
      'image': "assets/images/5.png",
      'T': "Interest/Hobbies",
      'icon': Icons.arrow_forward_ios,
      'page':  "B7page",
    },
    {
      'image': "assets/images/4.png",
      'T': "Projects",
      'icon': Icons.arrow_forward_ios,
      'page':  "B8page",
    },
    {
      'image': "assets/images/3.png",
      'T': "Achievements",
      'icon': Icons.arrow_forward_ios,
      'page':  "B9page",
    },
    {
      'image': "assets/images/2.png",
      'T': "References",
      'icon': Icons.arrow_forward_ios,
      'page':  "B10page",
    },
    {
      'image': "assets/images/1.png",
      'T': "Decalaration",
      'icon': Icons.arrow_forward_ios,
      'page':  "B11page",
    },
  ];

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(height: 45,),
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
                      SizedBox(width: MediaQuery.of(context).size.width / 7,),
                      Text("Resume Workspace",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Spacer(),
                  Text("Build Options",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                  Container(height: 25,),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [...A.map ((e) =>
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 15,
                      color: Colors.white,
                      child: Row(
                        children: [
                          SizedBox(width: 15,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("${e['image']}"),
                          ),
                          SizedBox(width: 15,),
                          Text("${e['T']}",style: TextStyle(color: Colors.grey,fontSize: 18),),
                          Spacer(),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  Navigator.pushNamed(context, e['page']);
                                });
                              },
                              child: Icon(e['icon'])),
                          SizedBox(width: 20,),
                        ],
                      ),
                    ),
                ).toList(),

                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey,
    );
  }
}


