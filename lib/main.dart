import 'package:flutter/material.dart';

import 'input_page.dart';
void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      // theme: ThemeData(
      //   primaryColor: Color(0xFF10132d),
      //   scaffoldBackgroundColor: Color(0xFF10132d),
      //   textTheme: TextTheme(
      //     body1: TextStyle(color: Color(0xFFd5d1fa),),
      //   ),
      //   // accentColor: Colors.purple,
      // ),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF10132d),
        scaffoldBackgroundColor: Color(0xFF10132d),
      ),
      home: InputPage(),
    ); 
  }
}
