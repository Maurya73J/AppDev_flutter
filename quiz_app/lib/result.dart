import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  @override
  String get resultPhrase {
    return 'Your score is:${resultScore}\nYou are done';
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              "Restart Quiz",
              style: TextStyle(fontSize: 25),
            ),
            textColor: Colors.red,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
