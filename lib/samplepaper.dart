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
        backgroundColor: Color(0xFF5C6BC0),
        title: Text(
          " Sample Paper ",
        ),
      ),
    );
  }

  }
