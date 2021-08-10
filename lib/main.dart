//////////////////////////////////
/// Icons : https://icons8.com/ 
///
/// Design Images : https://www.canva.com/design/DAEKpZ6GAO8/LnuM1P5tikAocuurR8BCIg/edit
///
///
//////////////////////////////////


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.indigo[200],
        body: SafeArea(
          child: Container(
            height: 100,
            width: 100,
            // margin: EdgeInsets.all(8.0),
            // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            margin: EdgeInsets.fromLTRB(60, 20, 30, 50), //(left, top, right, bottom)
            padding: EdgeInsets.all(20.0),
            color: Colors.indigo[100],
            child: Text("TCS"),

            // transform: Matrix4.rotationX(1.0),
            // transform: Matrix4.rotationY(1.0),
            transform: Matrix4.rotationZ(0.5),
          ),
        ),
      ),
    );
  }
}
