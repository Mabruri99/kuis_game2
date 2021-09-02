import 'package:flutter/material.dart';
import 'package:kuis_app/quizz.dart';
import 'package:kuis_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  dynamic questions = [
    {
      'question': 'what\'s your favorite colour?',
      'answer': [
        {'text': 'black', 'score': 10},
        {'text': 'blue', 'score': 5},
        {'text': 'red', 'score': 3},
        {'text': 'white', 'score': 1}
      ]
    },
    {
      'question': 'what\'s your favorite animal?',
      'answer': [
        {'text': 'lion', 'score': 10},
        {'text': 'wolf', 'score': 5},
        {'text': 'tiger', 'score': 15},
        {'text': 'elephant', 'score': 3}
      ]
    },
    {
      'question': 'what\'s your favorite Movie?',
      'answer': [
        {'text': 'The hacker', 'score': 10},
        {'text': 'The programmer', 'score': 5},
        {'text': 'The Chess', 'score': 3},
        {'text': 'The Dinousours', 'score': 1}
      ]
    },
    {
      'question': 'what\'s your favorite Anime?',
      'answer': [
        {'text': 'One Punch Man', 'score': 10},
        {'text': 'One Punch Man', 'score': 10},
        {'text': 'One Punch Man', 'score': 10},
        {'text': 'One Punch Man', 'score': 10}
      ]
    }
  ];

  int _totalScore = 0;
  int _questionIndex = 0;
  void resetHandler() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex++;
      print(_totalScore);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/saitama.jpg'),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 20), child: Text('Mabruri'))
          ],
        )),
        body: _questionIndex < questions.length
            ? Quiz(
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
                questions: questions,
              )
            : Result(_totalScore, resetHandler),
      ),
    );
  }
}
