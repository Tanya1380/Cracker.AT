import 'package:dimagkharab/Company.dart';
import 'package:dimagkharab/users.dart';
import 'package:dimagkharab/userscreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dashboard.dart';
import 'package:dimagkharab/homepage.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController name = TextEditingController();
  TextEditingController rollno = TextEditingController();
  TextEditingController branch = TextEditingController();
  TextEditingController year = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController cgpa = TextEditingController();
  TextEditingController _otp = TextEditingController();

  String _name, _roll, _branch, _year, _cgpa, _phone, _verify, _smsCode;

  Future<void> insertdata(final users) async {
    Firestore _firestore = Firestore.instance;
    await FirebaseAuth.instance.currentUser().then((user) {
      _firestore
          .collection("crackerdetails")
          .document(user.uid)
          .collection("using")
          .add(users)
          .then((DocumentReference document) {
        print(document.documentID);
      });
    });
  }

  Future<void> verifyphn() async {
    final PhoneCodeAutoRetrievalTimeout autoRetrieve = (String verId) {
      this._verify = verId;
    };

    // ignore: non_constant_identifier_names
    final PhoneCodeSent smsCodesent = (String verId, [int Forcecodesent]) {
      this._verify = verId;
      smsDialog(context).then((value) {
        print("Signed in");
      });
    };

    final PhoneVerificationCompleted verifiSuccess = (user) {
      print("verified");
    };

    final PhoneVerificationFailed verifiFail = (AuthException exception) {
      print("${exception.message}");
    };

    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: this._phone,
        timeout: const Duration(seconds: 5),
        verificationCompleted: verifiSuccess,
        verificationFailed: verifiFail,
        codeSent: smsCodesent,
        codeAutoRetrievalTimeout: autoRetrieve);
  }

  Future<bool> smsDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Enter sms text"),
            content: TextField(
              onChanged: (value) {
                this._smsCode = value;
              },
            ),
            contentPadding: EdgeInsets.all(10.0),
            actions: <Widget>[
              FlatButton(
                child: Text("Save"),
                onPressed: () {
                  _name = name.text;
                  _roll = rollno.text;
                  _branch = branch.text;
                  _year = year.text;
                  _cgpa = cgpa.text;
                  _phone = phone.text;

                  final User users = User(
                      name: _name,
                      roll_no: _roll,
                      branch: _branch,
                      year: _year,
                      cgpa: _cgpa,
                      phone: _phone);
                  verifyphn();
                  insertdata(users.toMap());
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => dashboard(),
                      ));
                },
              )
            ],
          );
        });
  }

  signfail() {
    PhoneAuthProvider.getCredential(verificationId: _verify, smsCode: _smsCode);
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => Company()),
        ));
  }

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    TextStyle textStyle = Theme.of(context).textTheme.subtitle;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          " Update your profile ",
        ),
        backgroundColor: Color(0xFF5C6BC0),
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            getImage(),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: TextFormField(
                style: textStyle,
                controller: name,
                onSaved: (input) => _name = input,
                onChanged: (value) {
                  this._name = value;
                },
                decoration: InputDecoration(
                    labelText: "Full Name",
                    labelStyle: textStyle,
                    hintText: " Enter your name ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: TextFormField(
                style: textStyle,
                onSaved: (input) => _roll = input,
                onChanged: (value) {
                  this._roll = value;
                },
                controller: rollno,
                decoration: InputDecoration(
                    labelText: "Enrollment No.",
                    labelStyle: textStyle,
                    hintText: " Enter your enrollment number ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: TextFormField(
                style: textStyle,
                onSaved: (input) => _branch = input,
                onChanged: (value) {
                  this._branch = value;
                },
                controller: branch,
                decoration: InputDecoration(
                    labelText: "Branch",
                    labelStyle: textStyle,
                    hintText: " Enter your branch ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: TextFormField(
                style: textStyle,
                controller: year,
                onSaved: (input) => _year = input,
                onChanged: (value) {
                  this._year = value;
                },
                decoration: InputDecoration(
                    labelText: "Year",
                    labelStyle: textStyle,
                    hintText: " Enter your year ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: TextFormField(
                style: textStyle,
                keyboardType: TextInputType.number,
                controller: cgpa,
                onSaved: (input) => _cgpa = input,
                onChanged: (value) {
                  this._cgpa = value;
                },
                decoration: InputDecoration(
                    labelText: "Current CGPA",
                    labelStyle: textStyle,
                    hintText: " Enter your current cgpa ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: TextFormField(
                style: textStyle,
                controller: phone,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                onSaved: (input) => _phone = input,
                onChanged: (value) {
                  this._phone = "+91" + value;
                },
                decoration: InputDecoration(
                    labelText: "Phone No.",
                    labelStyle: textStyle,
                    hintText: " Enter your mobile no. ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                    child: RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text(" Verify and Save"),
                      onPressed: verifyphn,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                      child: RaisedButton(
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: Text("skip"),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => newuser()));
                        },
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> dialogtrigger(BuildContext context) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Profile created",
              style: TextStyle(fontSize: 20.0),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text("Alright"),
                textColor: Colors.black,
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Company()));
                },
              )
            ],
          );
        });
  }

  Widget getImage() {
    AssetImage assetImage = AssetImage('images/profile.png');
    Image image = Image(
      image: assetImage,
      width: 150.0,
      height: 150.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.only(top: 30.0, bottom: 20.0, left: 20.0, right: 20.0),
    );
  }

  Future<String> getCurrentUID() async {
    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    return (await _firebaseAuth.currentUser()).uid;
  }

  void _submitOTP()
  {
    String _smscode = _otp.text.toString().trim();

  }

}