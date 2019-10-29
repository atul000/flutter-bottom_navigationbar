import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme:
          new ThemeData(primarySwatch: Colors.blue, fontFamily: 'RobotoMono'),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Bottom Nav")),
      body: new Container(
        child: Center(
          child: new RaisedButton(
            child: new Text(
              "click here",
            ),
            color: Colors.pink[300],
            onPressed: () => print("i m pressed"),
          ),
        ),
      ),
    );
  }
}
