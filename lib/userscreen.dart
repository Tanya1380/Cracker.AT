import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'drawers/newsidebar.dart';

class newuser extends StatefulWidget {
  @override
  _newuser createState() => _newuser();
}

class _newuser extends State<newuser> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onpressedback,
      child: Scaffold(
        drawer: Maindrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF5C6BC0),
        title: Text(
          " Update Profile "
        ),
      ),
      body: StreamBuilder(
        stream: getuserdataSnapShot(context),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Text('Loading your details',
          textAlign: TextAlign.center,);
          return ListView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (BuildContext context, int index) =>
                  buildTripCard(context, snapshot.data.documents[index]));
        },
      ),
    ));
  }

  Future<bool> _onpressedback() {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Do You Want To Exit ?"),
        actions: <Widget>[
          FlatButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text("No")),
          FlatButton(
              onPressed: () => Navigator.pop(context, true), child: Text("yes"))
        ],
      ),
    );
  }

  Stream<QuerySnapshot> getuserdataSnapShot(BuildContext context) async* {
    Firestore _firestore = Firestore.instance;
    FirebaseAuth _firebase = FirebaseAuth.instance;
    FutureOr<String> uid =
       await _firebase.currentUser().then((user) => user.uid);

    yield* _firestore
        .collection("crackerdetails")
        .document(uid.toString())
        .collection("using")
        .snapshots();
  }

  Widget buildTripCard(BuildContext context, DocumentSnapshot using) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: <Widget>[
            getImage(),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "Name: ",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                    using['name'],
                    style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "Branch: ",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                    using['branch'],
                    style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "Year: ",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                    using['year'],
                    style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "Roll No.: ",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                    using['roll_no'],
                    style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "CGPA: ",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                    using['cgpa'],
                    style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
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