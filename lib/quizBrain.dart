import 'questionAnswer.dart';

class QuizBrain {
  List<Questions> _questionBank = [
    Questions(q: 'Codding is good for developers.', a: true),
    Questions(q: 'Developers develop new things.', a: true),
    Questions(q: 'Create mobile application using only java programming language.', a: false),
    Questions(q: 'We can store string type data in \'int str\'.', a: false),
    Questions(q: 'Codding is good for developers.', a: true),
    Questions(q: 'Developers develop new things.', a: true),
    Questions(q: 'Create mobile application using only java programming language.', a: false),
    Questions(q: 'We can store string type data in \'int str\'.', a: false),
  ];

  int _questionNumber = 0;
  bool answerMark = true;

  int nextQuestion() {
    if(_questionNumber < _questionBank.length - 1) _questionNumber ++;
    else answerMark = false;
    return _questionNumber;
  }

  String getQuestion() {
    return _questionBank[_questionNumber].questionText;
  }
  bool getAnswer() {
    return _questionBank[_questionNumber].answerBool;
  }

}