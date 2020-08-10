import 'package:flutter/material.dart';

class Quiz extends StatefulWidget
{

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF5C6BC0),
        title: Text(
            " Quiz "
        ),
      ),
    );
  }
}