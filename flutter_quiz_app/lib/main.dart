import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _score = 0;
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What is your favourite colour?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'Yellow', 'score': 1}
      ],
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Cat', 'score': 5},
        {'text': 'Unicorn', 'score': 10},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _score += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz()
  {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _questionIndex, _answerQuestion)
            : Result(_score, _resetQuiz),
      ),
    );
  }
}
