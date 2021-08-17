import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({
    @required this.icons,
    @required this.levels,
    @required this.levelColor,
    @required this.levelSize,
  });

  final icons;
  final String levels;
  final levelColor;
  final levelSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icons,
            size: 75.0,
          ),
          SizedBox(height: 10.0),
          Text(
            levels,
            style: TextStyle(
              color: levelColor,
              fontSize: levelSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
