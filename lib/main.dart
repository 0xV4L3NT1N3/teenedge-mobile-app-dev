import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.drive_file_rename_outline,
              size: 30, color: Colors.black54),
          centerTitle: true,
          title:
              Text('Minimal Quotes', style: TextStyle(color: Colors.black54)),
          backgroundColor: Colors.grey[50],
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("This is a quote", style: TextStyle(fontSize: 30)),
              SizedBox(height: 50),
              Text("By it's author", style: TextStyle(fontSize: 20, color: Colors.grey)),
              SizedBox(height: 120),
              Center(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.black54),
                  onPressed: () {

                    // our button function goes here

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Next Quote',
                          style: TextStyle(color: Colors.grey[50])),
                      SizedBox(width: 10),
                      Icon(Icons.arrow_forward_rounded, color: Colors.grey[50]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
