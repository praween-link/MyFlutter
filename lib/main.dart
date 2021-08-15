import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:testing_app/quizalert.dart';
import 'quizBrain.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Word',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        body: Container(
          child: SafeArea(
            child: MyApp(),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,
            ),
            
          ),
        ),
      ),
    ),
  );
}

QuizBrain quizbrain = QuizBrain();
QuizAlert quizalert = QuizAlert();

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  void currectAnswer() {
    quizbrain.scoreKeeper.add(Icon(
      Icons.check,
      color: Colors.green,
    ));
  }
  void wrongAnswer() {
    quizbrain.scoreKeeper.add(Icon(
      Icons.close,
      color: Colors.red,
    ));
  }
  void checkAnswer(bool userPickAns) {
    setState(() {
      if(quizbrain.answerMark){
        if(userPickAns == quizbrain.getAnswer()) {
          currectAnswer();
        }else{
          wrongAnswer();
        }
        quizbrain.nextQuestion();
        print(quizbrain.answerMark);
      }else{
        quizalert.quizAlert(context);
      }
    });
  }

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
                quizbrain.getQuestion(),
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
                checkAnswer(true);
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
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
                checkAnswer(false);
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: quizbrain.scoreKeeper,
            ),
          ),
        ),
      ],
    );
  }
}
