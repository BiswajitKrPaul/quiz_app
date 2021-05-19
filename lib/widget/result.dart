import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function restartQuiz;
  Result(this.restartQuiz);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Done'),
          ElevatedButton(
            onPressed: restartQuiz,
            child: Text('Restart'),
          ),
        ],
      ),
    );
  }
}
