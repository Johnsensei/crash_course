import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, String this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: RaisedButton(
          color: Color(0xFF2196F3),
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: selectHandler,
        ));
  }
}
