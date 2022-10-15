import 'package:flutter/material.dart';

// these are my school notes

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var quote = "This is an old quote";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red[400],
          title: Text("Minecraft Quotes"),
          leading: Image.asset("images/logo.jpg", height: 10.0, width: 1.0),
        ),
        backgroundColor: Colors.grey[200],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                quote,
                style: TextStyle(fontSize: 25, color: Colors.red[400]),
              ),
            ),
            SizedBox(height: 75),
            TextButton(
              onPressed: () {
                setState(() {
                  quote = "This is a new quote";
                });
              },
              child: Text(
                "Next Quote",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.red[400],
                fixedSize: Size(200, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
