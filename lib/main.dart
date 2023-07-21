import 'package:flutter/material.dart';
import './question.dart';

main() => runApp(QuizApp());

class _QuizAppState extends State<QuizApp> {
  int _selectedQuestion = 0;

  void _answer() {
    setState(() => _selectedQuestion++);

    print(_selectedQuestion);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> questions = [
      "What is your favorite color?",
      "What is your favorite pet?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Questions"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_selectedQuestion]),
            ElevatedButton(
              child: Text("Answer 1"),
              onPressed: _answer,
            ),
            ElevatedButton(
              child: Text("Answer 2"),
              onPressed: _answer,
            ),
            ElevatedButton(
              child: Text("Answer 3"),
              onPressed: _answer,
            ),
          ],
        ),
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() {
    return _QuizAppState();
  }
}
