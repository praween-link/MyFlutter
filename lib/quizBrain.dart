import 'package:flutter/material.dart';

import 'questionAnswer.dart';

class QuizBrain {
  List<Questions> _questionBank = [
    // Questions(q: 'Codding is good for developers.', a: true),
    Questions(questionText: 'Codding is good for developers.', answerBool: true),
    Questions(questionText: 'Developers develop new things.', answerBool: true),
    Questions(questionText: 'Create mobile application using only java programming language.', answerBool: false),
    Questions(questionText: 'We can store string type data in \'int str\'.', answerBool: false),
    Questions(questionText: 'Codding is good for developers.', answerBool: true),
    Questions(questionText: 'Developers develop new things.', answerBool: true),
    Questions(questionText: 'Create mobile application using only java programming language.', answerBool: false),
    Questions(questionText: 'We can store string type data in \'int str\'.', answerBool: false),
  ];

  int _questionNumber = 0;
  bool answerMark = true;
  List<Icon> scoreKeeper = [];

  int nextQuestion() {
    if(_questionNumber < _questionBank.length - 1) _questionNumber ++;
    else answerMark = false;
    print("QN - $_questionNumber");
    return _questionNumber;
  }

  String getQuestion() {
    return _questionBank[_questionNumber].questionText;
  }
  bool getAnswer() {
    return _questionBank[_questionNumber].answerBool;
  }

}