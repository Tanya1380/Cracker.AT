import 'package:flutter/material.dart';
class Tips extends StatefulWidget
{

  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF5C6BC0),
        title: Text(
            " Tips "
        ),
      ),
    );
  }
}