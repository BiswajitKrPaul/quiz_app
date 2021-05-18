import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String buttonTitle;
  Answer(this.selectHandler, this.buttonTitle);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(buttonTitle),
      ),
    );
  }
}
