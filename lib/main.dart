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

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Bottom Nav"),
          bottom: new TabBar(
            controller: tabController,
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.favorite),
              ),
              new Tab(
                icon: new Icon(Icons.email),
              ),
              new Tab(
                icon: new Icon(Icons.search),
              )
            ],
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new NewPage("First"),
            new NewPage("Second"),
            new NewPage("three")
          ],
          controller: tabController,
        ),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add),
          onPressed: () => print("pressed"),
        ));
  }
}

class NewPage extends StatelessWidget {
  final String title;
  NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new Text(title),
      ),
    );
  }
}

// class MyBody extends StatelessWidget {
//   final AlertDialog dialog = new AlertDialog(
//     content: new Text("Dialog is up..", style: new TextStyle(fontSize: 15.0)),
//     title: new Text("hello"),
//   );
//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//       child: Center(
//         child: new RaisedButton(
//           child: new Text(
//             "click here",
//           ),
//           color: Colors.pink[300],
// onPressed: () => Scaffold.of(context).showSnackBar(new SnackBar(
//   content: new Text("hello..whats up"),
//   duration: new Duration(seconds: 3),
// )),
//           onPressed: () => showDialog(context: context, child: dialog),
//         ),
//       ),
//     );
//   }
// }
