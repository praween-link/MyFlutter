import 'package:flutter/material.dart';
import 'dart:math';
import 'package:english_words/english_words.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Word',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Generate Pair Words"),
        ),
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
  var wordPair = new WordPair.random();

  void pairWords() {
    setState(() {
      wordPair = new WordPair.random();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // child: Text(nouns.first),
      child: TextButton(
        onPressed: () => pairWords(),
        child: Text(
          wordPair.asPascalCase,
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
