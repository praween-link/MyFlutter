import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPres});

  final IconData icon;
  final Function onPres;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPres,
      child: Icon(icon),
      elevation: 12.0,
      constraints: BoxConstraints.tightFor(
        height: 50.0,
        width: 50.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}