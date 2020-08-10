
import 'package:dimagkharab/companies/cognizant.dart';
import 'package:flutter/material.dart';
import 'package:dimagkharab/companies/infosys.dart';
import 'package:dimagkharab/companies/capgemini.dart';
import 'package:dimagkharab/companies/wipro.dart';

class Company extends StatefulWidget
{

  @override
  _CompanyState createState() => _CompanyState();
}

class _CompanyState extends State<Company> {
  List<String> names = [
    "Infosys", "Capgemini","Wipro", "Cognizant", "Mindtree", "Hexaware"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEEEEEE),
        appBar: AppBar(
          backgroundColor: Color(0xFF5C6BC0),
          title: Text(
              " Company Name"
          ),
        ),
        body: Container(
          child: ListView.builder(
            itemBuilder: (_, index) => EachList(this.names[index]),
            itemCount: this.names.length,
          ),
        )
    );
  }
}

  class EachList extends StatelessWidget{

  final String name;
  int index;
  EachList(this.name);
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
        onTap: (){
          switch(name)
          {
            case "Infosys":  Navigator.push(context, MaterialPageRoute(
              builder: ((context) => infosys()),
          ));
            break;
            case "Capgemini": Navigator.push(context, MaterialPageRoute(
              builder: ((context) => Capgemini()),
            ));
            break;
            case "Wipro": Navigator.push(context, MaterialPageRoute(
              builder: ((context) => Wipro()),
            ));
            break;
            case "Cognizant": Navigator.push(context, MaterialPageRoute(
              builder: ((context) => Cognizant())
            ));
          }
          },
      child:Card(
        child: Container(
          padding: EdgeInsets.all(20.0),
                  child: Row(
            children: <Widget>[
              Icon(Icons.forward),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
              ),
              SizedBox(height: 20.0,),
              Text(name, style: TextStyle(fontSize: 15.0),),
            ],
          ),
        ),
      ),
    );
  }}
