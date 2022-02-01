import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function _resetHandler;

  final int resultScore;
  Result(this.resultScore, this._resetHandler);
  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(resultPhrase,
              textAlign: TextAlign.center,
              style:
                  const TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
        ),
        FlatButton(
            onPressed: _resetHandler,
            child: Text(
              'Restart Quiz!',
              style: TextStyle(color: Colors.blue),
            ))
      ],
    );
  }
}
