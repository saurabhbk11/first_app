import 'package:flutter/material.dart';
import './quetion.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> quetions;
  final int qindex;
  final Function answerquetion;

  Quiz(
      {@required this.quetions,
      @required this.answerquetion,
      @required this.qindex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(quetions[qindex]['qtext']),
        ...(quetions[qindex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerquetion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
