import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> sampelObjects;
  final int index;
  final Function sampelAnswer;

  Quiz({
    @required this.sampelObjects,
    @required this.sampelAnswer,
    @required this.index});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Question(sampelObjects[index]['questionText']),
        ...(sampelObjects[index]['answers'] as List<String>).map((answer) {
          return Answer(sampelAnswer, answer);
        }).toList()
      ],
    );
  }}
