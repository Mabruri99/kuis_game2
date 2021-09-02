import 'package:flutter/material.dart';
import 'package:kuis_app/answer.dart';
import 'package:kuis_app/questions.dart';

class Quiz extends StatelessWidget {
  dynamic questions;
  int? questionIndex;
  dynamic answerQuestion;
  Quiz({this.questions, this.questionIndex, this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['question']),
        ...(questions[questionIndex]['answer']).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        })
      ],
    );
  }
}
