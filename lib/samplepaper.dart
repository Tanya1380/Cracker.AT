import 'package:flutter/material.dart';

class samplepaper extends StatefulWidget{
  @override

  _sampleState createState() => _sampleState();
  }

  class _sampleState extends State<samplepaper>{

    List<String> names = [
      "Infosys", "Capgemini","Wipro", "Cognizant", "Mindtree", "Hexaware"
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        title: Text(
          " \t \t \t Sample Paper \t \t \t ",
          style: TextStyle(fontFamily: 'Roboto', fontSize: 15.0, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }

  }
