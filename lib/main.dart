import 'package:flutter/material.dart';

void main() => runApp(MyApp(items: List.generate(1000, (i) => "item $i")));

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ListView widget')),
        body: Center(
          child: Column(
            children: [
              Expanded(
                  child: RaisedButton(
                color: Colors.red,
                onPressed: () {},
                child: Text("Red"),
              )),
              RaisedButton(
                onPressed: () {},
                color: Colors.orange,
                child: Text("Orange"),
              ),
              Expanded(
                  child: RaisedButton(
                color: Colors.yellow,
                onPressed: () {},
                child: Text("Yellow"),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          width: 200,
          color: Colors.lightBlue,
        ),
        Container(
          width: 200,
          color: Colors.lightGreen,
        ),
        Container(
          width: 200,
          color: Colors.redAccent,
        ),
        Container(
          width: 200,
          color: Colors.purpleAccent,
        )
      ],
    );
  }
}
