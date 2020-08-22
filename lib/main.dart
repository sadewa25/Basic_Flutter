import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;

  void _sampelAnswer() {
    setState(() {
      _index += 1;
    });
    if (_index < sampelObjects.length)
      print('We Have More Questions');
    else
      print('No more questions');
    print(_index);
  }

  final sampelObjects = [
    {
      'questionText': 'Whats your favourite color?',
      'answers': ['Black', 'Red', 'White']
    },
    {
      'questionText': 'Whats your favourite animal?',
      'answers': ['Cat', 'Dog', 'Turtle']
    },
    {
      'questionText': 'Whats your favourite jobs?',
      'answers': ['Manager', 'Director', 'Commissioner']
    }
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: _index < sampelObjects.length
          ? Quiz(
              sampelAnswer: _sampelAnswer,
              sampelObjects: sampelObjects,
              index: _index
            )
          : Result(),
    ));
  }
}
