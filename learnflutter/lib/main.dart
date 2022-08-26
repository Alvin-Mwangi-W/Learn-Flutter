import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

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
        'answers': [
          {'text': 'Black', 'score': 5},
          {'text': 'White', 'score': 1},
          {'text': 'Blue', 'score': 2},
          {'text': 'Yellow', 'score': 8}
        ]
      },
      {
        'questionText': 'What\'s your favorite animal',
        'answers': [
          {'text': 'Dog', 'score': 3},
          {'text': 'Cat', 'score': 10},
          {'text': 'Owl', 'score': 8},
          {'text': 'Sloth', 'score': 2}
        ]
      },
      {
        'questionText': 'What\'s your favorite Meal',
        'answers': [
          {'text': 'Githeri', 'score': 4},
          {'text': 'Chapo', 'score': 6},
          {'text': 'fish', 'score': 8},
          {'text': 'Chicken', 'score': 2}
        ]
      },
      {
        'questionText': 'What\'s your favorite Lecturer',
        'answers': [
          {'text': 'Wainaina', 'score': 1},
          {'text': 'Fred', 'score': 8},
          {'text': 'Wanjiku', 'score': 2},
          {'text': 'None', 'score': 10}
        ]
      },
    ];
    var _questionIndex = 0;

    var totalScore = 0;

    void _answerQuestion(int score) {
      totalScore += score;

      if (_questionIndex < _questions.length) {
        print("We have more questions");
      }
      setState(() {
        _questionIndex = _questionIndex + 1;
      });

      print(_questionIndex);
    }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Personality App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex,
                )
              : Result()),
    );
  }
}
