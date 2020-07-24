import "package:flutter/material.dart";

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    if (resultScore < 6)
      return "Bad";
    else if (resultScore > 5 && resultScore < 10)
      return "Medium";
    else if (resultScore > 9 && resultScore < 13)
      return "Good";
    else
      return "Perfect";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.cyan,
        ),
      ),
    );
  }
}
