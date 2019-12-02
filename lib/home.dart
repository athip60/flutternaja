import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text("รีเฟรช"),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("ส่งความคิดถึงถึง google"),
              ),
            ],
          )
        ],
      ),
      body: new Container(
        margin: const EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new GestureDetector(
                onTap: () {
                  print("Container clicked");
                },
                child: new Container(
                  width: 330.0,
                  padding: new EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
                  color: Colors.green,
                  child: new Column(children: [
                    new Text("Ableitungen"),
                  ]),
                )),
            new Card(
              child: new Column(
                children: <Widget>[
                  new Image.network(
                      'https://gstatic.com/classroom/themes/img_haircut.jpg'),
                  new Padding(
                      padding: new EdgeInsets.all(7.0),
                      child: new Row(
                        children: <Widget>[
                          new Padding(
                            padding: new EdgeInsets.all(7.0),
                            child: new Text(
                              'ส่งงานเข้า#1',
                              style: new TextStyle(fontSize: 14.0),
                            ),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[],
        ),
      ),
    );
  }
}

// constraints: new BoxConstraints.expand(
//         height: 200.0,
//       ),
//       alignment: Alignment.bottomLeft,
//       padding: new EdgeInsets.only(left: 16.0, bottom: 8.0),
//       decoration: new BoxDecoration(
//         image: new DecorationImage(
//           image: new AssetImage('images/testbg.jpg'),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: new Text('Title',
//         style: new TextStyle(
//           fontWeight: FontWeight.bold,
//           fontSize: 20.0,
//         )
//       ),
