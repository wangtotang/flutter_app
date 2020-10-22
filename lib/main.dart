import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "导航演示",
      home: FirstScreen(),
    ));

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("下一页"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondScreen()));
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("返回"),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var stack = Stack(
      children: [
        CircleAvatar(
          backgroundImage:
              NetworkImage("https://blogimages.jspang.com/blogtouxiang1.jpg"),
          radius: 100,
        ),
        Positioned(
          child: Text("头像"),
          left: 50,
          top: 10,
        ),
        Positioned(
          child: Text("体重"),
          bottom: 10,
          right: 10,
        )
      ],
    );
    var card = Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
            title: Text(
              "中国矿业大学",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text("13005158888"),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
            title: Text(
              "中国矿业大学",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text("13005158888"),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
            title: Text(
              "中国矿业大学",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text("13005158888"),
          ),
        ],
      ),
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ListView widget')),
        body: Center(child: card),
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
