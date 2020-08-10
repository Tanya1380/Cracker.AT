import 'package:flutter/material.dart';

class Forget extends StatefulWidget
{
  @override
  _Forget createState() => _Forget();
}
class _Forget extends State<Forget>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5C6BC0),
        title: Text(
            "Forget Password "
        ),
      ),
    );
  }
}