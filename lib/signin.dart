
import 'package:dimagkharab/homepage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class SignIn extends StatefulWidget{
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cpassword = TextEditingController();
  String _email, _password;
  @override
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  void dispose() {
    password.dispose();
    cpassword.dispose();
    super.dispose();
  }

  bool _showpassword;
  bool showpass;

  void initState() {
    _showpassword = false;
    showpass = false;
    super.initState();
  }

  Widget build(BuildContext context) {
    TextStyle textStyle = Theme
        .of(context)
        .textTheme
        .subtitle;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Sign In",
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextFormField(
                validator: (input) {
                  if (input.isEmpty) {
                    return 'Please type an email';
                  }
                  return null;
                },
                style: textStyle,
                onSaved: (input) => _email = input,
                controller: email,
                decoration: InputDecoration(
                    labelText: "Email Id",
                    labelStyle: textStyle,
                    hintText: " Enter your Email Id ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextFormField(
                validator: (input) {
                  if (input.length < 6) {
                    return "Password should be of six character ";
                  }
                  return null;
                },
                onSaved: (input) => _password = input,
                style: textStyle,
                obscureText: !showpass,
                controller: password,
                decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: textStyle,
                    hintText: " Enter your password ",
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          showpass = !showpass;
                        });
                      },
                      child: Icon(
                        showpass ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                style: textStyle,
                obscureText: !_showpassword,
                controller: cpassword,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  labelStyle: textStyle,
                  hintText: " Confirm Password ",
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _showpassword = !_showpassword;
                      });
                    },
                    child: Icon(
                      _showpassword ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                  top: 10.0, bottom: 10.0, left: 50.0, right: 50.0),
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text(
                    " Submit "
                ),
                onPressed: () {
                  if (password.text == cpassword.text) {
                    signIn();
                  }
                  else {
                    //notif();
                  }
                },

              ),
            )
          ],
        ),
      ),
    );
  }

  Future signIn() async {
    void erro(BuildContext context) {
      var alertDialog = AlertDialog(
        content: Text(" Account Created!! "),
      );
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return alertDialog;
          }
      ) ;
    }
    try {
      var authResult = await _firebaseAuth.createUserWithEmailAndPassword
        (email: email.text, password: password.text);
      //user.sendEmailVerification();
      //Navigator.of(context).pop();
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage()));
      erro(context);

      return authResult.user != null;
    }
    catch (e) {
      print(e.toString());
    }
  }


}
