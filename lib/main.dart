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
  int current_step = 0;

  List<Step> my_steps = [
    new Step(
        title: new Text("Step 1"),
        content: new Text("this is step 1"),
        isActive: true),
    new Step(
        title: new Text("Step 2"),
        content: new Text("this is step 2"),
        isActive: true),
    new Step(
        title: new Text("Step 3"),
        content: new Text("this is step 3"),
        isActive: true),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Bottom Nav")),
        body: new Container(
          child: new Stepper(
            steps: my_steps,
            currentStep: this.current_step,
            type: StepperType.vertical,
          ),
        ));
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
