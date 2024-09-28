import 'dart:async';
import 'package:addnotes_app/screens/notesScreen.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
//import 'package:flutter_application_1/screen/welcome_screen.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
   void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Notesscreen())));
  } 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Text('DIARY',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight:FontWeight.w900 ),)
      ),
    );
  }
}