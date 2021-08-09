import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }

  bool tcs = false;

  void welcome() {
    setState(() {
      if (tcs) {
        tcs = false;
      } else {
        tcs = true;
      }
    });
  }

  Widget MyHomePage() {
    return Scaffold(
      backgroundColor: Colors.blueGrey[500],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[700],
        title: Text("Testing App"),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Image(
              image: AssetImage('images/diamond2.png'),
            ),
            Text(
              tcs ? "Diamond" : "",
              style: TextStyle(
                color: Colors.white,
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey[700],
        child: Image(
          image: AssetImage('images/diamond.png'),
        ),
        onPressed: () => welcome(),
      ),
    );
  }
}
