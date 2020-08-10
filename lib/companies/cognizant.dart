import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Cognizant extends StatefulWidget{
  @override
  _CognizantState createState() => _CognizantState();
  }

class _CognizantState extends State<Cognizant>
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
              AssetImage("images/co1.jpg"),
              AssetImage("images/co2.jpg"),
              AssetImage("images/co3.jpg"),
              AssetImage("images/co4.jpg"),
              AssetImage("images/co5.jpg")
            ], indicatorBgPadding: 1.0,
          ),
        ));
    return Scaffold(
      appBar: AppBar(
        title: Text(" \t \t \t COGNIZANT \t \t \t", style: TextStyle(fontFamily: 'Abel')),
        backgroundColor: Color(0xFF5C6BC0),
      ),
      body: ListView(
        children: <Widget>[
          image_slider_carousel,
          Container(
            color: Color(0xFFE3F2FD),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                    "\n Cognizant is an American multinational corporation that provides IT services, "
                        "including digital, technology, consulting, and operations services. "
                        "It is headquartered in Teaneck, New Jersey, United States. Cognizant is part of the NASDAQ-100 "
                        "and trades under CTSH. It was founded as an in-house technology unit of Dun & Bradstreet in 1994, "
                        "and started serving external clients in 1996"
                        "Cognizant had a period of fast growth during the 2000s, becoming a Fortune 500 company in 2011."
                        " The company has been involved in a number of controversies in India, Ireland, and the United States.",
                    style: TextStyle(fontFamily: 'Abel', fontSize: 15.0), textAlign: TextAlign.justify,
                  ),
                  Text(
                    "\n \t \t Cognizant's History \t \t \n",
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 15.0, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "\n Cognizant Technology Solutions, founded on January 26, "
                        "1994 by Kumar Mahadeva & Francisco D'Souza, is an American multinational IT services provider. "
                        "It also provides consulting and business process outsourcing (BPO) services. "
                        "In the course of dot com boom, it flourished by receiving the application maintenance work that "
                        "the big corporations were reluctant to carry out. Gradually, it moved into application development,"
                        " complex systems integration and consulting work. Cognizant grew rapidly during the 2000s and became a "
                        "Fortune 500 company in 2011. It is a member of the NASDAQ-100, the S&P 500, the Forbes Global 2000 and the "
                        "Fortune 500 and is positioned among the top performing and fastest growing companies in the world.",
                    style: TextStyle(fontFamily: 'Abel', fontSize: 15.0), textAlign: TextAlign.justify,
                  ),
                  Text(
                    " \n \t \t Organisation Head \t \t \n",
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 15.0, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "\n 1. Chairman — John E. Klein"
                    "\n 2. Chief Executive Officer (CEO) — Francisco D’Souza",
                    style: TextStyle(fontFamily: 'Abel', fontSize: 15.0), textAlign: TextAlign.justify,
                  ),
                  Text(
                    " \n \t \t Headquarters of the company \t \t \n",
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 15.0, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    " \n Teaneck, New Jersey, United States",
                    style: TextStyle(fontFamily: 'Abel', fontSize: 15.0), textAlign: TextAlign.justify,
                  ),
                  Text(
                    " \n \t \t Cognizant Logo \t \t \n",
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 15.0, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "\n Cognizant’s logo consists of two C’s - one vertical and one horizontal."
                        " The vertical C in the logo symbolises the equality of its employees while the horizontal "
                        "C signifies the corporation’s commitment to its customers.",
                    style: TextStyle(fontFamily: 'Abel', fontSize: 15.0), textAlign: TextAlign.justify,
                  ),
                  Text(
                    " \n \t Awards and Recognition \t \t \n",
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 15.0, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "\n •	Cognizant recognised as a Top Provider in the Outsourcing and Consulting "
                        "categories besides being named as a Customer Satisfaction Leader by CGT."
                    '\n•	Ovum Decision Matrix recognised Cognizant as "Market Leader" in Outsourcing Testing Service Providers.'
                    "\n•	Consumer Goods Technology (CGT) awarded Readers’ Choice Award for the ninth consecutive year."
                    "\n•	Forrester Research, Inc. named Cognizant a Leader in Business Intelligence Services."
                    "\n•	Cognizant placed as a Leader by the IDC MarketSpace report."
                    "\n•	Cognizant placed in IDC MarketScape as a Leader in IT and BPO Services.",
                    style: TextStyle(fontFamily: 'Abel', fontSize: 15.0), textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

}