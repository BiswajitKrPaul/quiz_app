import 'package:flutter/material.dart';
import 'package:quiz_app/widget/answer.dart';
import 'package:quiz_app/widget/question.dart';

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

  static const questions = [
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
          child: _questionIndex < questions.length
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      child: Question(
                          questions.elementAt(_questionIndex)['question']),
                      margin: EdgeInsets.all(10.0),
                    ),
                    ...(questions.elementAt(_questionIndex)['answers']
                            as List<String>)
                        .map((answer) {
                      return Answer(answerQuestion, answer);
                    }).toList(),
                  ],
                )
              : Center(
                  child: Text('Done'),
                ),
        ),
      ),
    ));
  }
}
