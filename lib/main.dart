import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var qindex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      var qindex = 0;
      var _totalScore = 0;
    });
  }

  // This widget is the root of your application.
  void _answerquetion(int score) {
    _totalScore += score;
    setState(() {
      qindex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var quetions = [
      {
        'qtext': 'What\'s your fav food',
        'answers': [
          {'text': 'Paneer', 'score': 5},
          {'text': 'Biryani B Box', 'score': 9},
          {'text': 'Aloo Tikka', 'score': 7},
          {'text': 'Palak Paneer', 'score': 8}
        ]
      },
      {
        'qtext': 'What\'s newton\'s second law of motion?',
        'answers': [
          {'text': '1st Law', 'score': 0},
          {'text': 'Second Law', 'score': 10},
          {'text': 'Third Law', 'score': 0},
          {'text': 'None of the above', 'score': 0}
        ]
      },
      {
        'qtext': 'What\'s your country name?',
        'answers': [
          {'text': 'India', 'score': 5},
          {'text': 'Bharat', 'score': 5},
          {'text': 'Hindustan', 'score': 5},
          {'text': 'All of the above', 'score': 10}
        ]
      }
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first App', textAlign: TextAlign.center,),

          ),
          body: qindex < quetions.length
              ? Quiz(
                  answerquetion: _answerquetion,
                  qindex: qindex,
                  quetions: quetions)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
