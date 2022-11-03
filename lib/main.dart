import 'package:flutter/material.dart';

// this is a comment, used to add notes in your code

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // this is the starting point of our Flutter app

      home: Scaffold(
        body: Center(
          child: Text(
            "Hello Earth",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
