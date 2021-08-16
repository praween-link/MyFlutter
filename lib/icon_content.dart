import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {

  IconContent({@required this.genderIcon, @required this.genderLevel, @required this.levelColor, @required this.levelSize});
  
  final genderIcon;
  final String genderLevel;
  final levelColor;
  final levelSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(genderIcon, size: 75.0,),
        SizedBox(height: 10.0),
        Text(genderLevel, style: TextStyle(color: levelColor, fontSize: levelSize, fontWeight: FontWeight.bold,),),
      ],),
    );
  }
}