import 'package:flutter/material.dart';
import 'package:testing_app/questionAnswer.dart';
// import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Word',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        body: SafeArea(
          child: MyApp(),
        ),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Icon> scoreKeeper = [];

  // List<String> questions = [
  //   "Codding is good for developers?",
  //   'Developers develop new things?',
  //   'Create mobile application using only java programming language?',
  // ];
  // List<bool> answers = [true, true, false];

  List<Questions> questionBank = [
    Questions(q: 'Codding is good for developers?', a: true),
    Questions(q: 'Developers develop new things?', a: true),
    Questions(q: 'Create mobile application using only java programming language?', a: false),
  ];

  int question_number = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                questionBank[question_number].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.green,
              child: Text(
                "True",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                setState(() {
                  bool user_answer = questionBank[question_number].answerBool;
                  user_answer
                      ? scoreKeeper.add(Icon(
                          Icons.check,
                          color: Colors.green,
                        ))
                      : scoreKeeper.add(Icon(
                          Icons.close,
                          color: Colors.red,
                        ));
                  question_number++;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                "False",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                setState(() {
                  bool user_answer = questionBank[question_number].answerBool;
                  !user_answer
                      ? scoreKeeper.add(Icon(
                          Icons.check,
                          color: Colors.green,
                        ))
                      : scoreKeeper.add(Icon(
                          Icons.close,
                          color: Colors.red,
                        ));
                  question_number++;
                });
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: scoreKeeper,
            ),
          ),
        ),
      ],
    );
  }
}
