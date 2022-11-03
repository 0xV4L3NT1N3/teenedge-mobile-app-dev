import 'package:flutter/material.dart';
import 'services/quote_api.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // variables holding quote and author data, set to a sample at first

  String quote = 'Thought Vitamins';
  String author = 'by 0xV4L3NT1N3';

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
              Text(quote, style: TextStyle(fontSize: 30)),
              SizedBox(height: 50),
              Text(author, style: TextStyle(fontSize: 20, color: Colors.grey)),
              SizedBox(height: 120),
              Center(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.black54),
                  onPressed: () async {

                    // call the getData function, and update quote variables

                    Map data = await getData();
                    setState(() {
                      quote = data["content"];
                      author = data["author"];
                    });

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
