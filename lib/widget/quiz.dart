import 'package:flutter/material.dart';
import 'package:quiz_app/widget/answer.dart';
import 'package:quiz_app/widget/question.dart';

class Quiz extends StatelessWidget {
  final questions;
  final Function answerQuestion;
  final int _questionIndex;
  Quiz(this.questions, this._questionIndex, this.answerQuestion);
  @override
  Widget build(BuildContext context) {
    return (Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          child: Question(questions.elementAt(_questionIndex)['question']),
          margin: EdgeInsets.all(10.0),
        ),
        ...(questions.elementAt(_questionIndex)['answers'] as List<String>)
            .map((answer) {
          return Answer(answerQuestion, answer);
        }).toList(),
      ],
    ));
  }
}
