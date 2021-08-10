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
          backgroundColor: Colors.blueGrey,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.blueGrey.shade100,
                  backgroundImage: AssetImage('images/iam.png'),
                ),
                Text(
                  'Praween Kumar',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MonteCarlo'),
                ),
                Text(
                  'SOFTWEAR DEVELOPER',
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cairo',
                      letterSpacing: 5.0),
                ),
                Container(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        color: Colors.grey.shade800,
                        size: 30.0,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        '+91 850 776 6280',
                        style: TextStyle(
                            color: Colors.grey.shade900,
                            fontSize: 20.0,
                            fontFamily: 'Cairo'),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: Colors.grey.shade800,
                        size: 30.0,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'pkumar.link@gamil.com',
                        style: TextStyle(
                          color: Colors.grey.shade900,
                          fontSize: 20.0,
                          fontFamily: 'Cairo',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
