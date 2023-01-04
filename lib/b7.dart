import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'global.dart';

import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as pw;

class B7page extends StatefulWidget {
  const B7page({Key? key}) : super(key: key);

  @override
  State<B7page> createState() => _B7pageState();
}

class _B7pageState extends State<B7page> {

  final pdf = pw.Document();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    makePDF();
  }

  makePDF () {
    pdf.addPage(
        pw.Page(
          build: (pw.Context context1) =>

                  // pw.Padding(
                  //       padding: pw.EdgeInsets.all(1),
                  //       child:pw.Column(
                  //         mainAxisAlignment: pw.MainAxisAlignment.start,
                  //         crossAxisAlignment: pw.CrossAxisAlignment.start,
                  //         children: [
                            pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              children: [
                                pw.Padding(
                                  padding: pw.EdgeInsets.only(bottom: 15),
                                  child: pw.Container(
                                    width: MediaQuery.of(context).size.width / 0.1,
                                    height: MediaQuery.of(context).size.height / 6.8,
                                    alignment: pw.Alignment.center,
                                    // child: Text("Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
                                    child: pw.Row(
                                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                                      children: [
                                        pw.Padding(
                                          padding:  pw.EdgeInsets.all(8.0),
                                          child: pw.Column(
                                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                                            mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                                            children: [
                                              // pw.Text(" ${Global.name}",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                              //  pw.Text(" ${Global.email}",style: pw.TextStyle(fontSize: 18),),
                                              // pw.Text(" ${Global.contact}",style: pw.TextStyle(fontSize: 18),),
                                              // pw.Text(" ${Global.address}",style: pw.TextStyle(fontSize: 18),),
                                              pw.Container(
                                                child: (Global.name == null)
                                                    ? null
                                                    : pw.Text(" ${Global.name}",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                              ),
                                              pw.Container(
                                                child: (Global.email == null)
                                                    ? null
                                                    :  pw.Text(" ${Global.email}",style: pw.TextStyle(fontSize: 18),),
                                              ),
                                              pw.Container(
                                                child: (Global.name == null)
                                                    ? null
                                                    :  pw.Text(" ${Global.contact}",style: pw.TextStyle(fontSize: 18),),
                                              ),
                                              pw.Container(
                                                child: (Global.name == null)
                                                    ? null
                                                    :  pw.Text(" ${Global.address}",style: pw.TextStyle(fontSize: 18),),                                              ),

                                            ],
                                          ),
                                        ),
                                        pw.Padding(
                                          padding:  pw.EdgeInsets.fromLTRB(0, 10, 10, 8),
                                          child: pw.Column(
                                            children: [
                                              (Global.image != null)
                                               ?pw.Container(
                                                  height: 100,
                                                  child: pw.ClipRRect(
                                                    child: pw.Image(
                                                    pw.MemoryImage(Global.image!.readAsBytesSync()),
                                                   ),
                                                  ),
                                                  decoration: pw.BoxDecoration(
                                                    shape: pw.BoxShape.circle,
                                                  ),
                                                ) : pw.Container(),
                                              // CircleAvatar(
                                              //   radius: 54,
                                              //   backgroundColor: Colors.grey[400],
                                              //   backgroundImage: (Global.image !=  null) ? FileImage(Global.image!) : null,
                                              // ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    decoration: pw.BoxDecoration(
                                      // color: PdfColor(0xffaeb9ab),
                                      color: PdfColors.brown200,
                                      borderRadius: pw.BorderRadius.circular(20),
                                      // border: Border.all(color: Colors.purpleAccent,width: 5),
                                    ),
                                  ),
                                ),
                                pw.Padding(
                                  padding: pw.EdgeInsets.only(bottom: 10),
                                  child: pw.Container(
                                    width: MediaQuery.of(context).size.width / 0.1,
                                    height: MediaQuery.of(context).size.height / 25,
                                    alignment: pw.Alignment.center,
                                    // child: Text("Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
                                    child: pw.Row(
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Padding(
                                          padding: pw.EdgeInsets.only(left: 5),
                                          child: pw.Text("CARRER OBJECTIVE",style: pw.TextStyle(fontSize: 20,fontWeight: pw.FontWeight.bold),),
                                        ),
                                      ],
                                    ),
                                    decoration: pw.BoxDecoration(
                                      // color: Color(0xfff2ebe0),
                                      color: PdfColors.blue100,
                                      borderRadius: pw.BorderRadius.circular(7),
                                      // border: Border.all(color: Colors.purpleAccent,width: 5),
                                    ),
                                  ),
                                ),
                      //           pw.Column(
                      //             crossAxisAlignment: pw.CrossAxisAlignment.start,
                      //             children: [
                                    pw.Padding(
                                      padding:  pw.EdgeInsets.only(left: 8),
                                      child: (Global.career == null) ? null : pw.Text("${Global.career}",style: pw.TextStyle(fontSize: 18),),
                                    ),
                                    pw.Padding(
                                      padding:  pw.EdgeInsets.only(left: 8,top: 2),
                                      child: pw.Row(
                                        children: [
                                          pw.Text("Dasiganation               ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                          pw.Container(
                                              child:(Global.desiganation == null)
                                                  ? null
                                                  :  pw.Text("${Global.desiganation}",style: pw.TextStyle(fontSize: 18),),
                                          ),
                                        ],
                                      ),
                                    ),
                      //
                      //             ],
                      //           ),
                                pw.Padding(
                                  padding:  pw.EdgeInsets.only(bottom: 10,top: 10),
                                  child: pw.Container(
                                    width: MediaQuery.of(context).size.width / 0.1,
                                    height: MediaQuery.of(context).size.height / 25,
                                    alignment: pw.Alignment.center,
                                    // child: Text("Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
                                    child: pw.Row(
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Padding(
                                          padding: pw.EdgeInsets.only(left: 5),
                                          child: pw.Text("PERSONAL DETAILS",style: pw.TextStyle(fontSize: 20,fontWeight: pw.FontWeight.bold),),
                                        ),
                                      ],
                                    ),
                                    decoration: pw.BoxDecoration(
                                      // color: PdfColor(0xfff2ebe0),
                                      color: PdfColors.blue100,
                                      borderRadius: pw.BorderRadius.circular(7),
                                      // border: Border.all(color: Colors.purpleAccent,width: 5),
                                    ),
                                  ),
                                ),
                      //           pw.Column(
                      //             crossAxisAlignment: pw.CrossAxisAlignment.start,
                      //             children: [
                                    pw.Padding(
                                      padding:  pw.EdgeInsets.only(left: 8,top: 2),
                                      child: pw.Column(
                                        children: [
                                          pw.Row(
                                            children: [
                                              pw.Text("Date of Birth               ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                              pw.Container(
                                                child:(Global.dob == null)
                                                    ? null
                                                    :   pw.Text("${Global.dob}",style: pw.TextStyle(fontSize: 18),),
                                              ),
                                            ],
                                          ),
                                          pw.Row(
                                            children: [
                                              pw.Text("Marital Status             ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                              pw.Container(
                                                child:(Global.marital == null)
                                                    ? null
                                                    : pw.Text("${Global.marital}",style: pw.TextStyle(fontSize: 18),),
                                              ),
                                            ],
                                          ),
                                          pw.Row(
                                            children: [
                                              pw.Text("Languages Known     ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                              pw.Text("${Global.hindi == true ? "Hindi, ": ""}",style: pw.TextStyle(fontSize: 18),),
                                              pw.Text("${Global.english == true ? "English, " : null}",style: pw.TextStyle(fontSize: 18),),
                                              pw.Text("${Global.gujarati == true ? "Gujarati" : null}",style: pw.TextStyle(fontSize: 18),),
                                            ],
                                          ),
                                          pw.Row(
                                            children: [
                                              pw.Text("Nationality                   ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                              pw.Container(
                                                child:(Global.nationality == null)
                                                    ? null
                                                    :  pw.Text("${Global.nationality}",style: pw.TextStyle(fontSize: 18),),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                      //
                      //             ],
                      //           ),
                                pw.Padding(
                                  padding:  pw.EdgeInsets.only(bottom: 10,top: 10),
                                  child: pw.Container(
                                    width: MediaQuery.of(context).size.width / 0.1,
                                    height: MediaQuery.of(context).size.height / 25,
                                    alignment: pw.Alignment.center,
                                    // child: Text("Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
                                    child: pw.Row(
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Padding(
                                          padding: pw.EdgeInsets.only(left: 5),
                                          child: pw.Text("EDUCATION",style: pw.TextStyle(fontSize: 20,fontWeight: pw.FontWeight.bold),),
                                        ),
                                      ],
                                    ),
                                    decoration: pw.BoxDecoration(
                                      // color: Color(0xfff2ebe0),
                                      color: PdfColors.blue100,
                                      borderRadius: pw.BorderRadius.circular(7),
                                      // border: Border.all(color: Colors.purpleAccent,width: 5),
                                    ),
                                  ),
                                ),
                      //           pw.Column(
                      //             crossAxisAlignment: pw.CrossAxisAlignment.start,
                      //             children: [
                                    pw.Padding(
                                      padding: pw.EdgeInsets.only(left: 8,top: 2),
                                      child: pw.Column(
                                        children: [
                                          pw.Row(
                                            children: [
                                              pw.Text("Course/Degree          ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                              pw.Text("${Global.course}",style: pw.TextStyle(fontSize: 18),),
                                            ],
                                          ),
                                          pw.Row(
                                            children: [
                                              pw.Text("Collage                       ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                              pw.Text("${Global.school}",style: pw.TextStyle(fontSize: 18),),
                                            ],
                                          ),
                                          pw.Row(
                                            children: [
                                              pw.Text("Collage                       ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                              pw.Text("${Global.cgpa}",style: pw.TextStyle(fontSize: 18),),
                                            ],
                                          ),
                                          pw.Row(
                                            children: [
                                              pw.Text("Year of Pass               ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                              pw.Text("${Global.year}",style: pw.TextStyle(fontSize: 18),),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                pw.Padding(
                                  padding: pw.EdgeInsets.only(bottom: 10,top: 10),
                                  child: pw.Container(
                                    width: MediaQuery.of(context).size.width / 0.1,
                                    height: MediaQuery.of(context).size.height / 25,
                                    alignment: pw.Alignment.center,
                                    child: pw.Row(
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Padding(
                                          padding: pw.EdgeInsets.only(left: 5),
                                          child: pw.Text("EXPERIENCE",style: pw.TextStyle(fontSize: 20,fontWeight: pw.FontWeight.bold),),
                                        ),
                                      ],
                                    ),
                                    decoration: pw.BoxDecoration(
                                      // color: Color(0xfff2ebe0),
                                      color: PdfColors.blue100,
                                      borderRadius: pw.BorderRadius.circular(7),
                                    ),
                                  ),
                                ),
                                pw.Padding(
                                  padding: pw.EdgeInsets.only(left: 8,top: 2),
                                  child: pw.Column(
                                    children: [
                                      pw.Row(
                                        children: [
                                          pw.Text("Company Name          ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                          pw.Text("${Global.cname}",style: pw.TextStyle(fontSize: 18),),
                                        ],
                                      ),
                                      pw.Row(
                                        children: [
                                          pw.Text("Collage                         ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                          pw.Text("${Global.collage}",style: pw.TextStyle(fontSize: 18),),
                                        ],
                                      ),
                                      pw.Row(
                                        children: [
                                          pw.Text("Roles                             ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                          pw.Text("${(Global.role == null) ? "-" : Global.role}",style: pw.TextStyle(fontSize: 18),),
                                        ],
                                      ),
                                      pw.Row(
                                        children: [
                                          pw.Text("Employed Status         ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                          pw.Text("${Global.status}",style: pw.TextStyle(fontSize: 18),),
                                        ],
                                      ),
                                      pw.Row(
                                        children: [
                                          pw.Text("Date Joined                  ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                          pw.Text("${(Global.join == null) ? "-" : Global.join}",style: pw.TextStyle(fontSize: 18),),
                                        ],
                                      ),
                                      pw.Row(
                                        children: [
                                          pw.Text("Date Exit                       ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                          pw.Text("${(Global.exit == null) ? "-" : Global.exit}",style: pw.TextStyle(fontSize: 18),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                      );

                            pdf.addPage(
                              pw.Page(
                                build: (pw.Context context1) =>
                              pw.Column(
                                  children: [
                                pw.Padding(
                                  padding: pw.EdgeInsets.only(bottom: 10,top: 10),
                                  child: pw.Container(
                                    width: MediaQuery.of(context).size.width / 0.1,
                                    height: MediaQuery.of(context).size.height / 25,
                                    alignment: pw.Alignment.center,
                                    // child: Text("Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
                                    child: pw.Row(
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Padding(
                                          padding: pw.EdgeInsets.only(left: 5),
                                          child: pw.Text("TECHNICAL SKILLS",style: pw.TextStyle(fontSize: 20,fontWeight: pw.FontWeight.bold),),
                                        ),
                                      ],
                                    ),
                                    decoration: pw.BoxDecoration(
                                      // color: Color(0xfff2ebe0),
                                      color: PdfColors.blue100,
                                      borderRadius: pw.BorderRadius.circular(7),
                                      // border: Border.all(color: Colors.purpleAccent,width: 5),
                                    ),
                                  ),
                                ),
                      //           pw.Column(
                      //             crossAxisAlignment: pw.CrossAxisAlignment.start,
                      //             children: [
                                    pw.Padding(
                                      padding: pw.EdgeInsets.only(left: 8,top: 2),
                                      child: pw.Column(
                                        children: [
                                          pw.Row(
                                            children: [
                                              // Text("          ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                              pw.Text("${Global.skill}",style: pw.TextStyle(fontSize: 18),),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                      //
                      //             ],
                      //           ),
                                pw.Padding(
                                  padding: pw.EdgeInsets.only(bottom: 10,top: 10),
                                  child: pw.Container(
                                    width: MediaQuery.of(context).size.width / 0.1,
                                    height: MediaQuery.of(context).size.height / 25,
                                    alignment: pw.Alignment.center,
                                    // child: Text("Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
                                    child: pw.Row(
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Padding(
                                          padding: pw.EdgeInsets.only(left: 5),
                                          child: pw.Text("PROJECTS",style: pw.TextStyle(fontSize: 20,fontWeight: pw.FontWeight.bold),),
                                        ),
                                      ],
                                    ),
                                    decoration: pw.BoxDecoration(
                                      // color: Color(0xfff2ebe0),
                                      color: PdfColors.blue100,
                                      borderRadius: pw.BorderRadius.circular(7),
                                      // border: Border.all(color: Colors.purpleAccent,width: 5),
                                    ),
                                  ),
                                ),
                      //           pw.Column(
                      //             crossAxisAlignment: pw.CrossAxisAlignment.start,
                      //             children: [
                                    pw.Padding(
                                      padding:  pw.EdgeInsets.only(left: 8,top: 2),
                                      child: pw.Column(
                                        children: [
                                          pw.Row(
                                            children: [
                                              pw.Text("Project Title                   ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                              pw.Text("${Global.ptitle}",style: pw.TextStyle(fontSize: 18),),
                                            ],
                                          ),
                                         pw. Row(
                                            children: [
                                              pw.Text("Technologies                 ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                              pw.Text("${Global.c == true ? "C Program,": ""}",style: pw.TextStyle(fontSize: 18),),
                                              pw.Text("${Global.cplus == true ? "C++," : ""}",style: pw.TextStyle(fontSize: 18),),
                                              pw.Text("${Global.flutter == true ? "Flutter" : ""}",style: pw.TextStyle(fontSize: 18),),
                                            ],
                                          ),
                                          pw.Row(
                                            children: [
                                              pw.Text("Roles                                ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                              pw.Text("${Global.analysis}",style: pw.TextStyle(fontSize: 18),),
                                            ],
                                          ),
                                          pw.Row(
                                            children: [
                                              pw.Text("Technologies                 ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                              pw.Text("${Global.tech}",style: pw.TextStyle(fontSize: 18),),
                                            ],
                                          ),
                                          pw.Row(
                                            children: [
                                              pw.Text("Project Descripation     ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                              pw.Text("${Global.prodes}",style: pw.TextStyle(fontSize: 18),),
                                            ],
                                          ),

                                        ],
                                      ),
                                    ),

                      //
                      //             ],
                      //           ),
                                pw.Padding(
                                  padding: pw.EdgeInsets.only(bottom: 10,top: 10),
                                  child: pw.Container(
                                    width: MediaQuery.of(context).size.width / 0.1,
                                    height: MediaQuery.of(context).size.height / 25,
                                    alignment: pw.Alignment.center,
                                    // child: Text("Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
                                    child: pw.Row(
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Padding(
                                          padding: pw.EdgeInsets.only(left: 5),
                                          child: pw.Text("ACHIEVEMENT",style: pw.TextStyle(fontSize: 20,fontWeight: pw.FontWeight.bold),),
                                        ),
                                      ],
                                    ),
                                    decoration: pw.BoxDecoration(
                                      // color: Color(0xfff2ebe0),
                                      color: PdfColors.blue100,
                                      borderRadius: pw.BorderRadius.circular(7),
                                      // border: Border.all(color: Colors.purpleAccent,width: 5),
                                    ),
                                  ),
                                ),
                      //           pw.Column(
                      //             crossAxisAlignment: pw.CrossAxisAlignment.start,
                      //             children: [
                                    pw.Padding(
                                      padding: pw.EdgeInsets.only(left: 8,top: 2),
                                      child: pw.Column(
                                        children: [
                                          pw.Row(
                                            children: [
                                              // Text("          ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                              pw.Text("${Global.achieve}",style: pw.TextStyle(fontSize: 18),),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                      //
                      //             ],
                      //           ),
                      //         ],
                      //       ),
                      //
                            pw.Padding(
                              padding: pw.EdgeInsets.only(bottom: 10,top: 10),
                              child: pw.Container(
                                width: MediaQuery.of(context).size.width /0.1,
                                height: MediaQuery.of(context).size.height / 25,
                                alignment: pw.Alignment.center,
                                // child: Text("Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
                                child: pw.Row(
                                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Padding(
                                      padding: pw.EdgeInsets.only(left: 5),
                                      child: pw.Text("REFERENCES",style: pw.TextStyle(fontSize: 20,fontWeight: pw.FontWeight.bold),),
                                    ),
                                  ],
                                ),
                                decoration: pw.BoxDecoration(
                                  // color: Color(0xfff2ebe0),
                                  color: PdfColors.blue100,
                                  borderRadius: pw.BorderRadius.circular(7),
                                  // border: Border.all(color: Colors.purpleAccent,width: 5),
                                ),
                              ),
                            ),
                      //       pw.Column(
                      //         crossAxisAlignment: pw.CrossAxisAlignment.start,
                      //         children: [
                                pw.Padding(
                                  padding: pw.EdgeInsets.only(left: 8,top: 2),
                                  child: pw.Column(
                                    children: [
                                      pw.Row(
                                        children: [
                                          pw.Text("Reference Name          ",style: pw.TextStyle(fontSize: 18,fontWeight:pw.FontWeight.bold),),
                                          pw.Text("${Global.Rname}",style: pw.TextStyle(fontSize: 18),),
                                        ],
                                      ),
                                      pw.Row(
                                        children: [
                                          pw.Text("Desiganation                ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                          pw.Text("${Global.desig}",style: pw.TextStyle(fontSize: 18),),
                                        ],
                                      ),
                                      pw.Row(
                                        children: [
                                          pw.Text("Organization                 ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                          pw.Text("${Global.institute}",style: pw.TextStyle(fontSize: 18),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                    pw.Padding(
                                      padding: pw.EdgeInsets.only(bottom: 10,top: 10),
                                      child: pw.Container(
                                        width: MediaQuery.of(context).size.width / 0.1,
                                        height: MediaQuery.of(context).size.height / 25,
                                        alignment: pw.Alignment.center,
                                        // child: Text("Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
                                        child: pw.Row(
                                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                                          children: [
                                            pw.Padding(
                                              padding: pw.EdgeInsets.only(left: 5),
                                              child: pw.Text("DECALARATION",style: pw.TextStyle(fontSize: 20,fontWeight: pw.FontWeight.bold),),
                                            ),
                                          ],
                                        ),
                                        decoration: pw.BoxDecoration(
                                          // color: Color(0xfff2ebe0),
                                          color: PdfColors.blue100,
                                          borderRadius: pw.BorderRadius.circular(7),
                                          // border: Border.all(color: Colors.purpleAccent,width: 5),
                                        ),
                                      ),
                                    ),
                                    //           pw.Column(
                                    //             crossAxisAlignment: pw.CrossAxisAlignment.start,
                                    //             children: [
                                    pw.Padding(
                                      padding: pw.EdgeInsets.only(left: 8,top: 2),
                                      child: pw.Column(
                                        children: [
                                          pw.Row(
                                            children: [
                                              pw.Text("Descripation                  ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                              pw.Text("${Global.descripation}",style: pw.TextStyle(fontSize: 18),),
                                            ],
                                          ),
                                          pw.Row(
                                            children: [
                                              pw.Text("Date                                 ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                              pw.Text("${Global.dd}",style: pw.TextStyle(fontSize: 18),),
                                            ],
                                          ),
                                          pw.Row(
                                            children: [
                                              pw.Text("Place(interview)            ",style: pw.TextStyle(fontSize: 18,fontWeight: pw.FontWeight.bold),),
                                              pw.Text("${Global.place}",style: pw.TextStyle(fontSize: 18),),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                               ],
                              ),
                              )
                            );
                      //
                      //             ],
                      //           ),
                      //         ],
                      //       ),
                      //        ),
  }

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading:  GestureDetector(
            onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            child: Icon(Icons.arrow_back_ios,color: Colors.white,)),

        actions: [
          IconButton(
              onPressed: () async {
                Uint8List data = await pdf.save();
                await Printing.layoutPdf (
                  onLayout : (format) => data,
                );
              },
              icon: Icon(Icons.picture_as_pdf)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 6.8,
                              alignment: Alignment.center,
                              // child: Text("Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(" ${Global.name}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text(" ${Global.email}",style: TextStyle(fontSize: 18),),
                                        Text(" ${Global.contact}",style: TextStyle(fontSize: 18),),
                                        Text(" ${Global.address}",style: TextStyle(fontSize: 18),),

                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                                    child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 54,
                                          backgroundColor: Colors.grey[400],
                                          backgroundImage: (Global.image !=  null) ? FileImage(Global.image!) : null,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xffaeb9ab),
                                borderRadius: BorderRadius.circular(20),
                                // border: Border.all(color: Colors.purpleAccent,width: 5),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 20,
                              alignment: Alignment.center,
                              // child: Text("Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("CARRER OBJECTIVE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xfff2ebe0),
                                borderRadius: BorderRadius.circular(20),
                                // border: Border.all(color: Colors.purpleAccent,width: 5),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 8),
                                   child: Text("${Global.career}",style: TextStyle(fontSize: 18),),
                                 ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 5),
                                child: Row(
                                  children: [
                                    Text("Dasiganation                 ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    Text("${Global.desiganation}",style: TextStyle(fontSize: 18),),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15,top: 15),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 20,
                              alignment: Alignment.center,
                              // child: Text("Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("PERSONAL DETAILS",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xfff2ebe0),
                                borderRadius: BorderRadius.circular(20),
                                // border: Border.all(color: Colors.purpleAccent,width: 5),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 5),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("Date of Birth                 ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.dob}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Marital Status               ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.marital}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Languages Known       ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.hindi == true ? "Hindi": null}, ",style: TextStyle(fontSize: 18),),
                                        Text("${Global.english == true ? "English" : null}, ",style: TextStyle(fontSize: 18),),
                                        Text("${Global.gujarati == true ? "Gujarati" : null}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Nationality                     ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.nationality}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15,top: 15),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 20,
                              alignment: Alignment.center,
                              // child: Text("Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("EDUCATION",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xfff2ebe0),
                                borderRadius: BorderRadius.circular(20),
                                // border: Border.all(color: Colors.purpleAccent,width: 5),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 5),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("Course/Degree             ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.course}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Collage                          ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.school}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Collage                          ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.cgpa}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Year of Pass                  ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.year}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15,top: 15),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 20,
                              alignment: Alignment.center,
                              // child: Text("Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("EXPERIENCE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xfff2ebe0),
                                borderRadius: BorderRadius.circular(20),
                                // border: Border.all(color: Colors.purpleAccent,width: 5),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 5),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("Company Name           ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.cname}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Collage                         ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.collage}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Roles                            ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.role}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Employed Status         ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.status}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Date Joined                  ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.join}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Date Exit                       ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.exit}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15,top: 15),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 20,
                              alignment: Alignment.center,
                              // child: Text("Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("TECHNICAL SKILLS",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xfff2ebe0),
                                borderRadius: BorderRadius.circular(20),
                                // border: Border.all(color: Colors.purpleAccent,width: 5),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 5),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        // Text("          ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.skill}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15,top: 15),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 20,
                              alignment: Alignment.center,
                              // child: Text("Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("PROJECTS",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xfff2ebe0),
                                borderRadius: BorderRadius.circular(20),
                                // border: Border.all(color: Colors.purpleAccent,width: 5),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 5),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("Project Title                    ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.ptitle}",style: TextStyle(fontSize: 18),),
                                      ]
                                    ),
                                    Row(
                                      children: [
                                        Text("Technologies                 ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.c == true ? "C Program,": null}",style: TextStyle(fontSize: 18),),
                                        Text("${Global.cplus == true ? "C++," : null}",style: TextStyle(fontSize: 18),),
                                        Text("${Global.flutter == true ? "Flutter," : null}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Roles                               ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.analysis}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Technologies                 ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.tech}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Project Descripation     ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.prodes}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),

                                  ],
                                ),
                              ),

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15,top: 15),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 20,
                              alignment: Alignment.center,
                              // child: Text("Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("ACHIEVEMENT",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xfff2ebe0),
                                borderRadius: BorderRadius.circular(20),
                                // border: Border.all(color: Colors.purpleAccent,width: 5),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 5),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        // Text("          ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.achieve}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 15,top: 15),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 20,
                          alignment: Alignment.center,
                          // child: Text("Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("REFERENCES",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xfff2ebe0),
                            borderRadius: BorderRadius.circular(20),
                            // border: Border.all(color: Colors.purpleAccent,width: 5),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8,top: 5),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Reference Name           ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    Text("${Global.Rname}",style: TextStyle(fontSize: 18),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Desiganation                 ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    Text("${Global.desig}",style: TextStyle(fontSize: 18),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Organization                  ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    Text("${Global.institute}",style: TextStyle(fontSize: 18),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15,top: 15),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height / 20,
                              alignment: Alignment.center,
                              // child: Text("Contact",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("DECALARATION",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xfff2ebe0),
                                borderRadius: BorderRadius.circular(20),
                                // border: Border.all(color: Colors.purpleAccent,width: 5),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8,top: 5),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text("Descripation                   ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.descripation}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Date                                  ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.dd}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Place(interview)              ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                        Text("${Global.place}",style: TextStyle(fontSize: 18),),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                            ],
                         ),
                       ],
                     )
                   ],
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
