import 'package:flutter/material.dart';
import 'quiz.dart';
import 'questioncap.dart';

class instruction extends StatefulWidget{
  @override
  _instruction createState() => _instruction();
}

class _instruction extends State<instruction>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " Instruction for the quiz ",
        ),
        backgroundColor: Color(0xFF5C6BC0),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    "\n 1. Total no. of questions will be 6 \n"
                    "\n 2. Each question contain four option out of which only one will be correct \n"
                    "\n 3. Each correct answer will give you 5 marks \n"
                    "\n 4. There is no negative marking \n"
                    "\n 5. You cannot pause the quiz in between \n",
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Text(
              " Do you want to start the quiz ??"
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: RaisedButton(
              color: Colors.blue,
              elevation: 5.0,
              focusElevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              focusColor: Colors.blue,
              textColor: Colors.white,
              child: Text("No"),
              onPressed: ()
              {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Quiz()
                ));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: RaisedButton(
              color: Colors.blue,
              elevation: 5.0,
              focusElevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              focusColor: Colors.blue,
              textColor: Colors.white,
              child: Text("Yes"),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => getjson()
                ));
              },
            ),
          )
        ],
      ),
    );
  }

}