import 'package:flutter/material.dart';
import 'package:dimagkharab/Company.dart';
import 'package:dimagkharab/about.dart';
import 'package:dimagkharab/samplepaper.dart';
import 'package:dimagkharab/quiz.dart';
import 'package:dimagkharab/tips.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../homepage.dart';
import '../userscreen.dart';

class Maindrawer extends StatelessWidget{
  @override
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            color: Color(0xFFE8EAF6),
            child: Center(
              child: Column(
                children: <Widget>[
                  getImage(),

                ],
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(5.0),
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text(" Update Profile ", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),

                onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(
                      builder: ((context) => newuser()),
                    ));
                  }
              )
          ),
          Padding(
              padding: EdgeInsets.all(5.0),
              child: ListTile(
                leading: Icon(Icons.people),
                title: Text(" Companies ", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),

                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(
                    builder: ((context) => Company()),
                  ));
                },
              )
          ),
          Padding(
              padding: EdgeInsets.all(5.0),
              child: ListTile(
                leading: Icon(Icons.picture_as_pdf),
                title: Text(" Sample Paper ", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),

                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(
                    builder: ((context) => samplepaper()),
                  ));
                },
              )
          ),
          Padding(
              padding: EdgeInsets.all(5.0),
              child: ListTile(
                leading: Icon(Icons.highlight),
                title: Text(" Tips ", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),

                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(
                    builder: ((context) => Tips()),
                  ));
                },
              )
          ),
          Padding(
              padding: EdgeInsets.all(5.0),
              child: ListTile(
                leading: Icon(Icons.description),
                title: Text(" Quiz ", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),

                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(
                    builder: ((context) => Quiz()),
                  ));
                },
              )
          ),
          Padding(
              padding: EdgeInsets.all(5.0),
              child: ListTile(
                leading: Icon(Icons.help_outline),
                title: Text(" About ", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),

                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(
                    builder: ((context) => About()),
                  ));
                },
              )
          ),
          Padding(
              padding: EdgeInsets.all(5.0),
              child: ListTile(
                leading: Icon(Icons.power_settings_new),
                title: Text(" Log Out ", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),

                onTap: ()
                async {
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  prefs.remove('email');
                  print("removed");
                  signOut(context);
                },
              )
          ),
        ],
      )
    );
  }

  Widget getImage() {
    AssetImage assetImage = AssetImage('images/atproject.png');
    Image image = Image(
      image: assetImage,
      width: 200.0,
      height: 200.0,
    );
    return Container(
      width: 100.0,
      height: 100.0,
      child: image,
      margin: EdgeInsets.only(top: 40.0, bottom: 10.0, left: 20.0, right: 20.0),
    );
  }
  Future<void> signOut(BuildContext context) async {
  await _firebaseAuth.signOut().then((_) {
  Navigator.push(
  context, MaterialPageRoute(builder: (context) => HomePage()));
  });
}

}