import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'main.dart';

class QuizAlert {
  get quizbrain => null;

  void quizAlert(BuildContext context) {
    Alert(
      context: context,
      // style: Colors.blue,
      type: AlertType.info,
      title: "CONGRATULATIONS!",
      desc: "You successfully complete this quiz.",
      buttons: [
        DialogButton(
          child: Text(
            "NICE",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            // Navigator.pop(context);
            MyApp();
          },
          color: Color.fromRGBO(0, 179, 134, 1.0),
          radius: BorderRadius.circular(0.0),
        ),
      ],
    ).show();
  }
}
