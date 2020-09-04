// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';

import 'assignmentbutton.dart';
import 'assignmenttext.dart';

void main() {
  runApp(AssignmentApp());
}

class AssignmentApp extends StatefulWidget {
  @override
  _AssignmentAppState createState() {
    return _AssignmentAppState();
  }
}

class _AssignmentAppState extends State<AssignmentApp> {
  final _buttonTitle = "Click me 😁";
  var _titles = const ["first title", "second title", "third title"];
  var currentIndex = 0;

  void _updateButtonText() {
    setState(() {
      if (currentIndex >= (_titles.length - 1)) {
        currentIndex = 0;
      } else {
        currentIndex += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Flutter Classes'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AssignmentButton(_buttonTitle, _updateButtonText),
          AssignmentText(_titles[currentIndex]),
        ],
      ),
    ));
  }
}
