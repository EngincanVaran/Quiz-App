import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: RaisedButton(
        color: Colors.deepOrange,
        child: Text("Bla Bla"),
        onPressed: selectHandler,
      ),
    );
  }
}
