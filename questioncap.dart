import 'dart:async';
import 'result.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class getjson extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString("asset/capquiz.json"),
      builder: (context, snapshot){
        List mydata = json.decode(snapshot.data.toString());
        if(mydata == null)
          {
            return Scaffold(
              body: Center(
                child: Text(
                  "Loading "
                ),
              ),
            );
          }else{
          return capques(mydata: mydata);
        }
      },
    );
  }
}

class capques extends StatefulWidget{

  var mydata;
  capques({Key key, @required this.mydata}) : super(key : key);

  @override
  _capques createState() => _capques(mydata);
}
class _capques extends State<capques>
{
  var mydata;
  _capques(this.mydata);

  Color colortoshow = Colors.blue;
  Color right = Colors.green;
  Color wrong = Colors.red;
  int marks = 0;
  int i = 1;
  int timer = 30;
  String showtimer = "30";
  Map<String, Color> btncolor ={
    "a": Colors.blue,
    "b": Colors.blue,
    "c": Colors.blue,
    "d": Colors.blue,
  };

  bool canceltimer = false;

  @override
  void initState()
  {
    startTimer();
    super.initState();
  }

  void startTimer() async{
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t)
    {
      setState(() {
        if(timer < 1)
          {
            t.cancel();
            nextquestion();
          }else if(canceltimer == true)
            {
             t.cancel();
            }
        else
            {
              timer = timer -1;
            }
        showtimer = timer.toString();
      });
    });
  }

  void nextquestion()
  {
    canceltimer = false;
    timer = 30;
    setState(() {
      if(i < 7)
        {
          i++;
        }else
          {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => resultPage(marks : marks),
            ));
          }
      btncolor["a"] = Colors.blue;
      btncolor["b"] = Colors.blue;
      btncolor["c"] = Colors.blue;
      btncolor["d"] = Colors.blue;
      startTimer();
    });
  }
  void checkanswer(String k)
  {
    if(mydata[2]["1"] == mydata[1]["1"][k])
      {
        colortoshow = right;
        marks = marks + 5;
      }else
        {
          colortoshow = wrong;
        }
    setState(() {
      btncolor[k] = colortoshow;
      canceltimer = true;
    });
    Timer(Duration(seconds: 2), nextquestion);
  }

  Widget choicebutton(String k){
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0
      ),
      child: MaterialButton(
        onPressed: () => checkanswer(k),
        child: Text(
          mydata[1][i.toString()][k],
        ),
        color: btncolor[k],
        splashColor: Colors.white70,
        minWidth: 200.0,
        height: 40.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]);
    return WillPopScope(
      onWillPop: (){
        return showDialog(context: context,
        builder: (context) => AlertDialog(
          title: Text("Quiz Stopped"),
          content: Text(
            "You can't go back at this moment"
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text(
                "OK"
              ),
            )
          ],
        ));
      },
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.all(25.0),
                child: Text(
                    mydata[0][i.toString()],
                ),
                alignment: Alignment.bottomCenter,
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    choicebutton("a"),
                    choicebutton("b"),
                    choicebutton("c"),
                    choicebutton("d")
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.topCenter,
                child: Container(
                  child: Center(
                    child: Text(
                      showtimer,
                      style: TextStyle(fontSize: 35.0),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}