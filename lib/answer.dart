import 'dart:ffi';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  dynamic theAns;
  String text;
  Answer(this.theAns, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: theAns,
          child: Text(text),
        ));
  }
}
