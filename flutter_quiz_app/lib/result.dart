import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _score;
  final Function _resetHandler;

  Result(this._score, this._resetHandler);

  String get resultPhrase => "You did it, with a final score of: $_score";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              "Reset Quiz!",
            ),
            textColor: Colors.blue,
            onPressed: _resetHandler,
          )
        ],
      ),
    );
  }
}
