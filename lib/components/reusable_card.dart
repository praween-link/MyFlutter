import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.usingColor, this.childCard, this.onPress});

  final Color usingColor;
  final Widget childCard;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: usingColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
