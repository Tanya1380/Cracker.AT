import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'questioncap.dart';
import 'instruction.dart';

class Quiz extends StatefulWidget
{

  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz>
{
  List<String> images =[
    "images/ip2.png",
    "images/cp.png",
    "images/wp.png",
    "images/cop.png"
  ];
  Widget customcard(String companyname, String image)
  {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: InkWell(
        onTap: ()
        {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => instruction()
          ));
        },
        child: Material(
          color: Color(0xFF01579B),
          borderRadius: BorderRadius.circular(10.0),
          elevation: 10.0,
          child: Container(
            height: 200.0,
            width: 200.0,
            child: Column(
              children: <Widget>[
                Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(150.0),
                    color: Color(0xFFBBDEFB),
                    elevation: 20.0,
                    child: Container(
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            image
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
                Padding(
                  padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    companyname,
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.justify,
                  ),
                )),
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        "Infosys is an IT Company",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.justify,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF5C6BC0),
        title: Text(
            " Quiz "
        ),
      ),
      body: ListView(
        children: <Widget>[
          customcard("Infosys", images[0]),
          customcard("Capgemini", images[1]),
          customcard("Wipro", images[2]),
          customcard("Cognizant", images[3])
        ],
      ),
    );
  }
}