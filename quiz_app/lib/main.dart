import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': "What\s your favorite color?",
      'answers': [
        {'text': 'blue', 'score': 10},
        {'text': 'green', 'score': 8},
        {'text': 'black', 'score': 6},
        {'text': 'red', 'score': 4}
      ],
    },
    {
      'questionText': "What\s your favorite animal?",
      'answers': [
        {'text': 'dog', 'score': 10},
        {'text': 'cat', 'score': 8},
        {'text': 'cow', 'score': 6},
        {'text': 'parrot', 'score': 4}
      ],
    },
    {
      'questionText': "What\s your favorite language?",
      'answers': [
        {'text': 'python', 'score': 10},
        {'text': 'c', 'score': 8},
        {'text': 'c++', 'score': 6},
        {'text': 'java', 'score': 4}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _ansQuestion(score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("we have more questions");
    }
  }

  @override
  Widget build(BuildContext txt) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "My App",
            style: TextStyle(fontSize: 28),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                ansQuestion: _ansQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
