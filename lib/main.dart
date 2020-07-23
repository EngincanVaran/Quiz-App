import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print("Debugger --> Answered");
  }

  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color",
      "What's your favorite animal",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "My First App",
          ),
        ),
        body: Column(children: [
          Text(
            questions[questionIndex],
          ), // list.elementAt()
          RaisedButton(
            child: Text("Answer 1"),
            onPressed: answerQuestion,
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
