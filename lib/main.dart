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
          alignment: Alignment.topCenter,
          children: <Widget>[
            Image(
              image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/a/a7/TCS-Siruseri-Building.jpg',
              ),
            ),
            Text(
              tcs ? "Welcome To TCS" : "",
              style: TextStyle(
                color: Colors.blue,
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
          image: NetworkImage(
            'https://www.tcs.com/content/dam/tcs/images/logo/tata-logo-blue.png',
          ),
        ),
        onPressed: () => welcome(),
      ),
    );
  }
}
