import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';

class resultPage extends StatefulWidget{
  int marks;
  resultPage({Key  key, @required this.marks}) : super(key : key);

  @override
  _resultState createState() => _resultState(marks);
}

class _resultState extends State<resultPage>
{

  int marks;
  _resultState(this.marks);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Results"
        ),
        backgroundColor: Color(0xFF5C6BC0),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Material(
              elevation: 10.0,
              child: Container(
                child: Column(
                children: <Widget>[
                Material(
                  child: Container(
                    height: 300.0,
                    width: 300.0,
                    child: ClipRect(
                      child: Image(
                        image: AssetImage(
                            "images/goodjob.png"
                        ),
                      ),
                    ),
                  ),
                ),
                 Padding(
                   padding: EdgeInsets.symmetric(
                     vertical: 5.0,
                     horizontal: 15.0
                   ),
                   child:  Center(
                     child: Text(
                         " Congratulation !! \n"
                             "You Scored $marks marks"
                     ),
                   ),
                 )
              ])),
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: ()
                  {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Quiz(),
                    ));
                  },
                  child: Text(
                    "Continue"
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0
                  ),
                  borderSide: BorderSide(width: 3.0, color: Colors.blue ),
                  splashColor: Colors.white70,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}