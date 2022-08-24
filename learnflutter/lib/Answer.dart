import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectAnswer;
  final String answerText;

  Answer(this.selectAnswer, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: selectAnswer,
        ),
      ),
    );
  }
}
