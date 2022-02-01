import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Snack', 'score': 5},
        {'text': 'Elephant', 'score': 10},
        {'text': 'Shark', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': [
        {'text': 'Hai', 'score': 10},
        {'text': 'Tuan', 'score': 3},
        {'text': 'Bach', 'score': 1},
        {'text': 'Son', 'score': 5}
      ]
    },
  ];
  int _totalScore = 0;
  _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('My first app'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    questions: _questions,
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                  )
                : Result(_totalScore, _resetQuiz)));
  }
}
