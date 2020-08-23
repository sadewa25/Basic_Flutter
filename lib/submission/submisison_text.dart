import 'package:flutter/material.dart';

class SubmissionText extends StatelessWidget {
  String _textValue;
  final int score;
  SubmissionText(this._textValue, this.score);

  String get resultPhrase {
    _textValue = '';
    if(score < 3)
      _textValue = 'Score A';
    else if(score < 5)
      _textValue = 'Score B';
    else if(score < 7)
      _textValue = 'Score C';
    else
      _textValue = 'Score D';
    return _textValue;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '$resultPhrase ,$score',
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.deepOrange),
    );
  }
}
