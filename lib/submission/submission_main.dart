import 'package:flutter/material.dart';
import 'package:flutter_app_helloworld/constant_dimens/constant_dimen.dart';
import 'submisison_text.dart';

class Submission extends StatefulWidget {
  @override
  _SubmissionState createState() => _SubmissionState();
}

class _SubmissionState extends State<Submission> {

  String _textValue = 'Hello Submission Page';
  int _score = 0;
  void changeText(){
    setState(() {
      _score += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Submission Page')),
          body: Container(
            width: double.infinity,
            margin: EdgeInsets.all(margin_default),
            child: Column(
              children: [
                SubmissionText(_textValue, _score),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(
                      margin_zero, margin_small, margin_zero, margin_zero),
                  child: RaisedButton(
                    onPressed: changeText,
                    child: Text('Submit'),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
