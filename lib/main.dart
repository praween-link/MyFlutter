//////////////////////////////////
/// Icons : https://icons8.com/
///
/// Design Images : https://www.canva.com/design/DAEKpZ6GAO8/LnuM1P5tikAocuurR8BCIg/edit
///
///
//////////////////////////////////

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
                
                SizedBox(
                  height: 10.0,
                  width: 200.0,
                  child: Divider(
                    color: Colors.white60,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.grey.shade800,
                      size: 30.0,
                    ),
                    title: TextFormField(
                      style: TextStyle(
                          color: Colors.grey.shade900,
                          fontSize: 20.0,
                          fontFamily: 'Cairo',
                        ),
                      decoration: InputDecoration(
                        hintText: '+91 Mobile number',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.grey.shade800,
                      size: 35.0,
                    ),
                    title: TextFormField(
                      style: TextStyle(
                        color: Colors.grey.shade900,
                        fontSize: 20.0,
                        fontFamily: 'Cairo',
                      ),
                      decoration: InputDecoration(
                        hintText: 'something@gamil.com',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
