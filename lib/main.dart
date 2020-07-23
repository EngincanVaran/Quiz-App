import 'package:flutter/material.dart';

import "./question.dart";

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
          title: Text(
            "My First App",
          ),
        ),
        body: Column(children: [
          Question(
            questions[_questionIndex],
          ), // list.elementAt()
          RaisedButton(
            child: Text("Answer 1"),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: Text("Answer 2"),
            onPressed: () => print(
                "Anonymous Function - Answer 2 Chosen"), //Anonymous Function
          ),
          RaisedButton(
            child: Text("Answer 3"),
            onPressed: () {
              print(
                  "Anonymous Function - Answer 2 Chosen"); //Anonymous Function
            },
          ),
        ]), // Row or Column
      ),
    );
  }
}
