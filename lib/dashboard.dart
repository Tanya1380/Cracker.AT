import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'drawers/newsidebar.dart';

class dashboard extends StatefulWidget{
  @override
  _dashboard createState() => _dashboard();
}
 class _dashboard extends State<dashboard>
 {
  @override
  Widget build(BuildContext context) {
    Widget image_slider_carousel = Padding(
        padding: EdgeInsets.all(7.50),
        child: Container(
          height: 350.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
          child: Carousel(
            boxFit: BoxFit.fill,
            images: [
              AssetImage("images/at2.png"),
              AssetImage("images/c1.jpg"),
              AssetImage("images/i1.jpg"),
              AssetImage("images/w1.jpg"),
              AssetImage("images/co1.jpg")
            ], indicatorBgPadding: 1.0,
          )),
        ));
    return Scaffold(
      backgroundColor: Color(0xFFE8EAF6),
      appBar: AppBar(
        backgroundColor: Color(0xFF5C6BC0),
        title: Text(
          " Dashboard "
        ),
      ),
      drawer: Maindrawer(),
      body: ListView(
        children: <Widget>[
          image_slider_carousel,
        ],
      ),
    );
  }

 }