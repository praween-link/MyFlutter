import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({@required this.usingColor, this.childCard});

  final Color usingColor; 
  final Widget childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childCard,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: usingColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}