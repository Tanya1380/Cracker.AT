import 'package:dimagkharab/Company.dart';
import 'package:dimagkharab/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dimagkharab/users.dart';


class LoginPage extends StatefulWidget
{
  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage>
{
  TextEditingController name = TextEditingController();
  TextEditingController roll_no = TextEditingController();
  TextEditingController branch = TextEditingController();
  TextEditingController year = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController cgpa = TextEditingController();

  String _name, _roll, _branch, _year, _cgpa,  _phone, _verify, _smsCode;


  Future<void> insertdata(final user) async{

    Firestore _firestore = Firestore.instance;

    _firestore.collection("user").add(user)
        .then((DocumentReference document){
      print(document.documentID);
    }).catchError((e){
      print(e);
    });
  }


  Future<void> verifyphn() async{

    final PhoneCodeAutoRetrievalTimeout autoRetrieve = (String verId) {
      this._verify = verId;

    };

    final PhoneCodeSent smsCodesent = (String verId, [int Forcecodesent]) {
      this._verify = verId;
      smsDialog(context).then((value) {
        print("Signed in");
      });
    };

    final PhoneVerificationCompleted verifiSuccess = (user)
    {
      print("verified");
    };

    final PhoneVerificationFailed verifiFail = (AuthException exception)
    {
      print("${exception.message}");
    };

    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: this._phone,
        timeout: const Duration(seconds: 5), verificationCompleted: verifiSuccess,
        verificationFailed: verifiFail, codeSent: smsCodesent, codeAutoRetrievalTimeout: autoRetrieve);

  }

  Future<bool> smsDialog(BuildContext context)
  {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context)
        {
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
                onPressed: ()
                {
                  //final String _name = name.text;
                  //final String _roll = roll_no.text;
                  //final String _branch = branch.text;
                  //final String _year = year.text;
                  //final String _cgpa = cgpa.text;
                  //final String _phone = phone.text;

                  //final User user = User(name: _name, roll_no: _roll,
                  //branch: _branch, year: _year, cgpa: _cgpa, phone: _phone
                  //);
                  //insertdata(user.toMap());
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => drawer(),
                      ));
                },
              )
            ],
          );
        }
    );
  }

  signfail()
  {
    PhoneAuthProvider.getCredential(verificationId: _verify, smsCode: _smsCode);
    Navigator.push(context, MaterialPageRoute(
        builder: ((context) => Company()),
      ));
  }
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.subtitle;
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        title: Text(
          " Update your profile ",
        ) ,
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
                onChanged: (value)
                {
                  this._name = value;
                },
                decoration: InputDecoration(
                    labelText: "Full Name",
                    labelStyle: textStyle,
                    hintText: " Enter your name ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: TextFormField(
                style: textStyle,
                onSaved: (input) => _roll = input,
                onChanged: (value)
                {
                  this._roll = value;
                },
                controller: roll_no,
                decoration: InputDecoration(
                    labelText: "Enrollment No.",
                    labelStyle: textStyle,
                    hintText: " Enter your enrollment number ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: TextFormField(
                style: textStyle,
                onSaved: (input) => _branch = input,
                onChanged: (value)
                {
                  this._branch = value;
                },
                controller: branch,
                decoration: InputDecoration(
                    labelText: "Branch",
                    labelStyle: textStyle,
                    hintText: " Enter your branch ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: TextFormField(
                style: textStyle,
                controller: year,
                onSaved: (input) => _year = input,
                onChanged: (value)
                {
                  this._year = value;
                },
                decoration: InputDecoration(
                    labelText: "Year",
                    labelStyle: textStyle,
                    hintText: " Enter your year ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: TextFormField(
                style: textStyle,
                keyboardType: TextInputType.number,
                controller: cgpa,
                onSaved: (input) => _cgpa = input,
                onChanged: (value)
                {
                  this._cgpa = value;
                },
                decoration: InputDecoration(
                    labelText: "Current CGPA",
                    labelStyle: textStyle,
                    hintText: " Enter your current cgpa ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: TextFormField(
                style: textStyle,
                controller: phone,
                keyboardType: TextInputType.numberWithOptions(signed: true),
                onSaved: (input) => _phone = input,
                onChanged: (value)
                {
                  this._phone = value;
                },
                decoration: InputDecoration(
                    labelText: "Phone No.",
                    labelStyle: textStyle,
                    hintText: " Enter your mobile no. ",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text(
                    " Verify and Save"
                ),
                onPressed: verifyphn,
              ),
            ),
          ],
        ),
      ),
    );


  }

  Future<bool> dialogtrigger(BuildContext context) async{
    return showDialog(
        context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
          return AlertDialog(
            title: Text("Profile created", style: TextStyle(fontSize: 20.0),),
            actions: <Widget>[
              FlatButton(
                child: Text("Alright"),
                textColor: Colors.black,
                onPressed: ()
                {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) => Company()));
                },
              )
            ],
          );
      }
    );
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
  }
