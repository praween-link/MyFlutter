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
          child: Row(  //Column
            // mainAxisSize: MainAxisSize.min,
            // verticalDirection: VerticalDirection.up,
            // verticalDirection: VerticalDirection.down,
            // mainAxisAlignment: MainAxisAlignment.start, // center, end, spaceAround, spaceBetween, spaceEvenly
            crossAxisAlignment: CrossAxisAlignment.stretch, // end, center, stretch, start
            children: [
              Container(
                // height: 100,
                width: 100,
                color: Colors.indigo[100],
                child: Text("TCS"),
              ),
              SizedBox(height:10), // Space between two widgets
              Container(
                // height: 100,
                // width: double.infinity,
                color: Colors.indigo[400],
                child: Text("TCS"),
              ),
              Container(
                // height: 100,
                width: 100,
                color: Colors.indigo[500],
                child: Text("TCS"),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
