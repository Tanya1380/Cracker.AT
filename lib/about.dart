import 'package:flutter/material.dart';

class About extends StatefulWidget
{

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF5C6BC0),
        title: Text(
            " About "
        ),
      ),
    );
  }
}