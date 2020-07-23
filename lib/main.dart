import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer Chosen");
  }

  Widget build(BuildContext context) {
    /*
    var questions = [
      "What's your favorite color",
      "What's your favorite animal",
    ];
    */
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "My First App",
          ),
        ),
        body: Column(children: [
          Text("The Question!"),
          RaisedButton(
            child: Text("Answer 1"),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text("Answer 2"),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text("Answer 3"),
            onPressed: answerQuestion,
          ),
        ]), // Row or Column
      ),
    );
  }
}
