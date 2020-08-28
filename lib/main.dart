import 'package:dimagkharab/dashboard.dart';
import 'package:dimagkharab/userscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dimagkharab/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

// void main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//     routes: <String, WidgetBuilder>{
//       '/homepage': (BuildContext context) => HomePage(),
//     },
//     debugShowCheckedModeBanner: false,
//   ));
// }

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
          () {
        var context2 = context;
        Navigator.of(context2).pushReplacement(
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Padding(
            padding: EdgeInsets.only(top: 150.0),
            child: Image.asset(
              'images/at2.png',
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
          )),
      backgroundColor: Colors.white,
    );
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('email');
  // ignore: unused_local_variable
//  var pass = prefs.getString('pass');
  runApp(MaterialApp(
    home: email == null ? MyApp() : dashboard(),
    debugShowCheckedModeBanner: false,
  ));
}