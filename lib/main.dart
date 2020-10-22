import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(title: "导航演示", home: ZhaoXiaoJieJie()));

class ZhaoXiaoJieJie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("找小姐姐"),
      ),
      body: Center(child: Image.asset("images/ic_logout.png")),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => _navigateToXiaoJieJie(context),
      child: Text("去找小姐姐"),
    );
  }

  _navigateToXiaoJieJie(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => XiaoJieJie()));
    Scaffold.of(context).showSnackBar(SnackBar(content: Text(result)));
  }
}

class XiaoJieJie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("小姐姐"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () => Navigator.pop(context, "大长腿小姐姐 15016548888"),
              child: Text("大长腿小姐姐"),
            ),
            RaisedButton(
              onPressed: () => Navigator.pop(context, "小蛮腰小姐姐 15016549999"),
              child: Text("小蛮腰小姐姐"),
            ),
          ],
        ),
      ),
    );
  }
}

class Product {
  String title;
  String description;
  Product(this.title, this.description);
}

class ProductList extends StatelessWidget {
  List<Product> products;
  ProductList({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          title: Text(products[index].title),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ProductDetail(product: products[index])));
          },
        ),
        itemCount: products.length,
      ),
    );
  }
}

class ProductDetail extends StatelessWidget {
  Product product;
  ProductDetail({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${product.title}"),
      ),
      body: Center(child: Text("${product.description}")),
    );
  }
}

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
