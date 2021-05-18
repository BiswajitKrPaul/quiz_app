import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        fontStyle: FontStyle.italic,
        color: Colors.blue.shade900,
      ),
      textAlign: TextAlign.center,
    );
  }
}
