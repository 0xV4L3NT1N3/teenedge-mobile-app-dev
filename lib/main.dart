import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // this is a Scaffold widget, it is a plain canvas
      home: Scaffold(
        backgroundColor: Colors.green[800],
        // this is a Text widget, with some styling
        body: Center(
          child: Text(
            "Hello TeenEdge",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
