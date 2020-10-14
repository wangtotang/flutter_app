import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 300,
            height: 150,
            color: Colors.red,
            child: new Image.network(
              "https://i0.hdslb.com/bfs/face/b67a37542d33d093ff28780848448e0a1c78932a.png",
              fit: BoxFit.contain,
              repeat: ImageRepeat.noRepeat,
              color: Colors.lightBlue,
              colorBlendMode: BlendMode.darken,
            ),
          ),
        ),
      ),
    );
  }
}
