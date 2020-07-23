import 'package:flutter/material.dart';

import "./question.dart";
import "./answer.dart";

/*
***NOTES***

--> "_" makes it private in the specific .dart file


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

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print("Debugger --> Answered");
  }

  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "My First App",
          ),
        ),
        body: Column(children: [
          Question(
            questions[_questionIndex],
          ), // list.elementAt()
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
        ]), // Row or Column
      ),
    );
  }
}
