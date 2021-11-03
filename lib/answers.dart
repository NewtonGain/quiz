import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback qusetionUpdateMethod;
  final String answer;
  const Answer(this.qusetionUpdateMethod, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: RaisedButton(
        onPressed: qusetionUpdateMethod,
        child: Text(
          answer,
          style: TextStyle(fontSize: 20),
        ),
        color: Colors.blue.shade300,
        padding: EdgeInsets.only(top: 5, bottom: 5),
      ),
    );
  }
}
