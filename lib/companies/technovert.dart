import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class technovert extends StatefulWidget{

  @override
  _technState createState() => _technState();
}

class _technState extends State<technovert>
{
  @override
    Widget build(BuildContext context) {

      Widget image_slider_carousel = Padding(
          padding: EdgeInsets.all(7.50),
          child: Container(
            height: 200.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Carousel(
              boxFit: BoxFit.fill,
              images: [
                AssetImage("images/i1.jpg"),
                AssetImage("images/i2.jpg"),
                AssetImage("images/i3.jpeg"),
                AssetImage("images/i4.jpeg"),
                AssetImage("images/i5.jpg")
              ], indicatorBgPadding: 1.0,
            ),
          ));
    return null;
  }

}