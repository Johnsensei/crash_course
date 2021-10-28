import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback restartHandler;

  Result(this.resultScore, this.restartHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore >= 12) {
      resultText = 'I think we can be friends.';
    } else {
      resultText = 'Good luck with life.';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: restartHandler,
            child: Text('Restart'),
            textColor: Colors.teal,
          )
        ],
      ),
    );
  }
}
