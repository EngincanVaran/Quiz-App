import 'package:flutter/material.dart';

import "./quiz.dart";
import "./result.dart";

/*
***NOTES***

--> "_" makes it private in the specific .dart file
--> "..." disperse the list 1 by 1

*/

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  final _questions = const [
    {
      //list element 1
      "questionText": "What's your favorite color?",
      "answers": [
        {"text": "Black", "score": 2},
        {"text": "Red", "score": 3},
        {"text": "Orange", "score": 4},
        {"text": "White", "score": 1},
      ]
    },
    {
      //list element 2
      "questionText": "What's your favorite animal?",
      "answers": [
        {"text": "Rabbit", "score": 2},
        {"text": "Elephant", "score": 3},
        {"text": "Penguin", "score": 4},
        {"text": "Dog", "score": 1},
      ]
    },
    {
      //list element 3
      "questionText": "Who's your favorite instructor?",
      "answers": [
        {"text": "Max", "score": 1},
        {"text": "Engo", "score": 3},
        {"text": "Caglar", "score": 2},
      ]
    },
    {
      //list element 4
      "questionText": "What's your favorite food?",
      "answers": [
        {"text": "Kebab", "score": 4},
        {"text": "Mantı", "score": 3},
        {"text": "Dolma", "score": 2},
        {"text": "Tantuni", "score": 5},
        {"text": "Balık", "score": 1},
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    print("Debugger --> Answered with Button.");

    setState(() {
      _questionIndex += 1;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "My First App",
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
