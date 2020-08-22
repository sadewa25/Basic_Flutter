import 'package:flutter/material.dart';
import 'assignment/main.dart';
import 'main_button.dart';
import 'submission/submission_main.dart';

void main() => runApp(MaterialApp(
      title: 'Basic',
      home: MyAppPages(),
    ));

class MyAppPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('First Page')),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            MainButton('Tutorial Page', MyApp()),
            MainButton('Submission Page', Submission())
          ],
        ),
      ),
    ));
  }
}
