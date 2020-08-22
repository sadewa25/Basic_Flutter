import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8),
      child: RaisedButton(onPressed: selectHandler,
          color: Colors.blueAccent,
          textColor: Colors.white,
          child: Text(answerText)),);
  }
}
