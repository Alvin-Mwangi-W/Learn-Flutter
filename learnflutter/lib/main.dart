import 'package:flutter/material.dart';

import 'quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    const _questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'White', 'Blue', 'Yellow']
      },
      {
        'questionText': 'What\'s your favorite animal',
        'answers': ['Dog', 'Cat', 'Owl', 'Sloth']
      },
      {
        'questionText': 'What\'s your favorite Meal',
        'answers': ['Githeri', 'Chapo', 'Chicken', 'Fish']
      },
      {
        'questionText': 'What\'s your favorite Lecturer',
        'answers': ['None', 'Wainanina', 'Kungu', 'Wanjiku']
      },
    ];
    var _questionIndex = 0;

    void _answerQuestion() {
      if (_questionIndex < _questions.length) {
        print("We have more qiestions");
      }
      setState(() {
        _questionIndex = _questionIndex + 1;
      });

      print(_questionIndex);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Center(
                child: Text("You did it!!"),
              ),
      ),
    );
  }
}
