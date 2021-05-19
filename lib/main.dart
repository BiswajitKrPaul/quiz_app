import 'package:flutter/material.dart';
import 'package:quiz_app/widget/quiz.dart';
import 'package:quiz_app/widget/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  void resetQuiz() {
    setState(() {
      print('Reset Required');
      _questionIndex = 0;
    });
  }

  static const _questions = [
    {
      'question': 'What\'s is your fav colour ?',
      'answers': ['red', 'blue', 'black', 'green']
    },
    {
      'question': 'What\'s is your Nickname ?',
      'answers': ['babu', 'gg', 'jj', 'ii']
    }
  ];

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: SafeArea(
          child: _questionIndex < _questions.length
              ? Quiz(_questions, _questionIndex, answerQuestion)
              : Result(resetQuiz),
        ),
      ),
    ));
  }
}
