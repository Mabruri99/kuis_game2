import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalScore;

  Function resetHandler;

  Result(this.totalScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'you did It!!!';
    if (totalScore >= 40) {
      resultText = 'You are strange!!!';
    } else if (totalScore >= 35) {
      resultText = 'You are awesome!!!';
    } else if (totalScore >= 25) {
      resultText = 'keep going!!!';
    } else {
      resultText = 'never give up!!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () => resetHandler(),
              child: Text('Reset Game'),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blue, primary: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
