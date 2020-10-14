import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 500,
            height: 400,
            alignment: Alignment.center,
            // color: Colors.blue,
            child: Text("Hello Tong", style: TextStyle(fontSize: 40)),
            padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
            margin: EdgeInsets.all(20),
            decoration: new BoxDecoration(
                border: Border.all(width: 5, color: Colors.red)),
          ),
        ),
      ),
    );
  }
}
