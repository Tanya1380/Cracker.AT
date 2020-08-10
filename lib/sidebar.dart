import 'package:dimagkharab/newsidebar.dart';
import 'package:flutter/material.dart';

class drawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5C6BC0),
        title: Text(" Your Profile "),
      ),
      drawer: Maindrawer(),
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          ],
        ),
    )
    );
  }

}