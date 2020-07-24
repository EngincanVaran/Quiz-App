import "package:flutter/material.dart";

import "./answer.dart";
import "./question.dart";

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[questionIndex]["questionText"],
      ), // list.elementAt()

      ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(() => answerQuestion(answer["score"]), answer["text"]);
      }).toList(), // creating button for each answer choice

      Text(
        "Question Number: " + (questionIndex + 1).toString(),
        style: TextStyle(
          fontSize: 10,
          color: Colors.blue,
        ),
      ),
    ]);
  }
}
