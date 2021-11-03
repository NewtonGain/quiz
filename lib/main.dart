import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = [
 {
      "question": "What is your Favurite game ?",
      "answers": ['Football', 'Cricket', 'Tanes', 'Basket Ball']
    },
    {
      "question": "What is your Favurite color ?",
      "answers": ['Red', 'Green', 'Yellow', 'Blue']
    },
    {
      "question": "The synonym of ‘autography’ is",
      "answers": [
        'Graphical thing',
        'Writing about',
        'Graph sheet',
        'Painting on graph'
      ]
    },
    {
      "question": "Choose the correct sentence-",
      "answers": [
        ' this is an unique case',
        'this is a very unique case',
        ' this is a unique case',
        'this is the most unique case'
      ]
    },
    {
      "question": "Knowledge can be compared ___ light.",
      "answers": [' with', 'to', 'of', 'by']
    },
    {
      "question": " Identify the correct spelling-",
      "answers": [' Volaptous', 'Volaptuos', 'Voleptious', 'Voluptuous']
    },
    {
      "question": " Toot one’s own horn’ means-",
      "answers": [' boast', 'talks a lot', 'possessive', ' self destruction']
    },
    {
      "question": "A person with the same name as another-",
      "answers": [' anonymous', 'nickname', 'Pseudonym', 'namesake']
    },
    {
      "question":
          "Cutting back on benefits has been used as a ____ of increasing profit margin.",
      "answers": [' means', 'policy', 'method', 'program']
    },
    {
      "question":
          "_____ better, the team would have been able to defeat the opponent.",
      "answers": [
        ' Had it prepared',
        'Would it prepared',
        ' It prepares',
        'If it prepares'
      ]
    },
    {
      "question": "When ____ to her?",
      "answers": [
        '  did you talked',
        ' you talked',
        ' talked you',
        ' did you talk'
      ]
    },
    {
      "question": "How many feet is equal to 1 notical mile?",
      "answers": [' 5220', '7010', '6250', '6076']
    },
    {
      "question": "If x:y=5:3, then (8x-5y):(8x+5y)=?",
      "answers": ['  3:12', '8 : 12', ' 5 : 11', ' 5 : 15']
    },
    {
      "question": "The value of 0.1×0.1 is",
      "answers": [' 0.1', ' .1', '  0.01', ' 0.001']
    },
  ];
  int _incrementQuestion = 0;
  void _questionUpdate() {
    setState(() {
      _incrementQuestion++;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          centerTitle: true,
        ),
        body: _incrementQuestion < questions.length
            ? Quiz(
                questionList: questions,
                questionFunction: _questionUpdate,
                questionIncrement: _incrementQuestion,
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("quiz completed"),
                  ],
                ),
              ),
      ),
    );
  }
}
