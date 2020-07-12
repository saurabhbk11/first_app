import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalxcore;
  final Function resetQuiz;

  Result(this.totalxcore, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            'Your Total Score is : $totalxcore',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Reset Quiz'),
            onPressed: resetQuiz,
            textColor: Colors.cyan,
          )
        ],
      ),
    );
  }
}
