import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class newuser extends StatefulWidget{
  @override
  _newuser createState() => _newuser();
  }


  class _newuser extends State<newuser>
  {

    Future getposts() async
    {
      var firestore = Firestore.instance;

      QuerySnapshot qn = await firestore.collection("users").getDocuments();
       return qn.documents;
    }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: FutureBuilder(
        future: getposts(),
        builder: (_, snapshot){

          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: Text(" Loading....."),
            );}
            else{
              return ListView.builder(
                itemCount: snapshot.data.length,
                  itemBuilder: (_, index){
                  return ListTile(
                    title: Text(snapshot.data[index].data["title"]) ,
                  );
              });
          }
          }),
    );
  }

  }