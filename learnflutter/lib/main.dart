import 'package:flutter/material.dart';

import './question.dart';
import './Answer.dart';

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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
