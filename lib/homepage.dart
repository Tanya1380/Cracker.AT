import 'package:dimagkharab/newuser_screen.dart';
import 'package:dimagkharab/sidebar.dart';
import "package:flutter/material.dart";
import 'forget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dimagkharab/signin.dart';
import 'package:flutter/cupertino.dart';


class HomePage extends StatefulWidget
{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  String _email, _password;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  void dispose()
  {
    password.dispose();
    super.dispose();
  }
  bool show;
  void initState()
  {
    show = false;
    super.initState();
  }
  Widget build(BuildContext context) {
    //TextStyle textStyle = Theme.of(context).textTheme.title;

    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10.0),
            child: Form(
                key: _formkey,
                //margin: EdgeInsets.all(20.0),
                child: ListView(
                    children: <Widget>[
                      getImage(),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: TextFormField(
                          validator: (input) {
                            if (input.isEmpty) {
                              return 'Please type an email';
                            }
                            return null;
                          },
                          onChanged: (value)
                          {
                            setState(() {
                              _email=value;
                            });
                          },
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'Enter your email id ',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                          ),),


                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: TextFormField(
                          validator: (input) {
                            if (input.length < 6) {
                              return 'Your password should be of six characters';
                            }
                            return null;
                          },
                          onChanged: (value)
                          {
                            setState(() {
                              _password=value;
                            });
                          },
                          obscureText: !show,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter your password ',
                            suffixIcon: GestureDetector(
                              onTap: ()
                              {
                                setState(() {
                                  show = !show;
                                });
                              },
                              child: Icon(
                                show ? Icons.visibility : Icons.visibility_off,
                              ),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                          ),
                        ),),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
                        child:
                        RaisedButton(
                          color: Colors.blue,
                          elevation: 5.0,
                          focusElevation: 10.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          focusColor: Colors.blue,
                          textColor: Colors.white,
                          child: Text("Login"),
                          onPressed: () async {
                            LogIn();
                            var user = await _firebaseAuth.signInWithEmailAndPassword(
                                email: _email,
                                password: _password).then((user) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginPage(),
                                  ));

                            }).catchError((e) {
                              print(e);
                            });
                          }
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 50.0, right: 50.0),
                        child: FlatButton(
                          textColor: Colors.black,
                          child: Text(
                            " Forgot password ???",
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: ((context) => Forget()),
                            ));
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 60.0, bottom: 20.0, left: 10.0, right: 10.0),
                        child: RaisedButton(
                          color: Colors.white,
                          textColor: Colors.black,
                          child: Text(
                            "Create new account",
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: ((context) => SignIn()),
                            ));
                          },
                        ),
                      )
                    ]
                ))
        ));
  }

  Future<void> LogIn() async {
    void err(BuildContext context) {
      var alertDialog = AlertDialog(
        title: Text(" OOPS !!!"),
        content: Text(" You don't have an account "),
      );
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return alertDialog;
          }
      );
    }
    final formState = _formkey.currentState;
    if (formState.validate()) {
      formState.save();
      try {
        FirebaseUser user = (await FirebaseAuth.instance
            .signInWithEmailAndPassword
          (email: _email, password: _password)).user;
        Navigator.push(context, MaterialPageRoute(
            builder: (context) => LoginPage()));
      }
      catch (e) {
        err(context);
      }
    }
  }
  Widget getImage() {
    AssetImage assetImage = AssetImage('images/atproject.png');
    Image image = Image(
      image: assetImage,
      width: 150.0,
      height: 150.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.only(top: 50.0, bottom: 20.0, left: 20.0, right: 20.0),
    );
  }
  }