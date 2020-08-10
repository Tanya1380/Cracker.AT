import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class infosys extends StatefulWidget{
  @override
  _infosysState createState() => _infosysState();
  }

  class _infosysState extends State<infosys>
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
    return Scaffold(
      appBar: AppBar(title:
      Text("\t \t  INFOSYS \t \t", style: TextStyle(fontFamily: 'Abel')),
          backgroundColor: Color(0xFF5C6BC0),),
      body: ListView(
        children: <Widget>[
          image_slider_carousel,
          Container(
            color:  Color(0xFFE3F2FD),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                Text("Infosys Limited is an Indian Information Technology company that provides global business consulting and information technology services."
                    " Infosys helps clients in 45 countries to create and execute different strategies for their digital transformation. Infosys helps businesses to renew & improve existing conditions so that their business can "
                    "achieve higher efficiencies and stay relevant according to current times.\n"
                    "\n Infosys has more than 200,000 employees and through their hard work & dedication, Infosys has grown to become a US 10.9 billion (revenues FY18) company with a market capitalization of US Dollar 39 billion.\n",
                style: TextStyle(fontSize: 15.0, fontFamily: 'Abel'),textAlign: TextAlign.justify,),
                  Text("\n \t \t \t  Infosys History \t \t \t \n",
                    style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 15.0),),
              Text("\nInfosys Limited formerly known as Infosys Technologies Limited was established in the year 1981 by N. R. Narayana Murthy and a team of six other engineers in Pune, "
                    "India with an initial capital investment of just US Dollar 250."
              "\n •	In the year 1993 Infosys went public and introduced employee stock options program."
                  " \n •	In 1994, Infosys moved its corporate office from Pune to Bangalore, India."
                  " \n •	In the year 1999, Infosys became the first Indian IT company to be listed in NASDAQ thus making it the"
                    " costliest share on the market at that time in India. In the year 1999, Infosys was among the 20 biggest companies"
                    " by market value on the NASDAQ."
              "\n •	In the year 1999 Infosys annual revenue touched US Dollar 100 million, US Dollar 1 billion in 2004 and US Dollar 10 billion in 2017.\n",
                style: TextStyle(fontSize: 15.0, fontFamily: 'Abel'),textAlign: TextAlign.justify,),
              Text("\n \t \t \t  Organization Heads \t \t \t \n ",
                style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 15.0),),
              Text("\n 1.	N.R. Narayana Murthy is the founder of Infosys."
              " \n 2.	Salil S. Parekh is the CEO and managing director of Infosys."
               " \n 3.	Pravin Rao is the chief operating officer of Infosys.\n",
                style: TextStyle(fontSize: 15.0, fontFamily: 'Abel'),textAlign: TextAlign.justify,),
                Text(" \n \t \t \t   Geographical Presence \t \t \t \n ",
                  style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 15.0),),
                  Text("\nBy the year 2017, Infosys had 116 development centers across the globe along with 84 sales and marketing offices."
                    " Its major presence is in India, United States, China, Australia, Japan and Europe.\n",
                    style: TextStyle(fontSize: 15.0, fontFamily: 'Abel'),textAlign: TextAlign.justify,),
              Text(" \n \t  Infosys branches in India are in\t  \n ",
                style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 15.0),),
                  Text(
                   "\n Infosys has presence across entire India "
                  " \n •	Bangalore"
                  " \n •	Bhubaneswar"
                  " \n •	Chandigarh"
                  " \n •	Chennai"
                  " \n •	Gurgaon"
                  " \n •	Hyderabad"
                  " \n •	Mysuru"
                  " \n •	Mumbai"
                  " \n •	Jaipur"
                  " \n •	Mangaluru"
                  " \n •	Pune\n",
                    style: TextStyle(fontSize: 15.0, fontFamily: 'Abel',)),
                  Text(" \n \t \t  Infosys’ Mission Statement \t \t \n ",
                    style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 15.0),),
                  Text("\nTo achieve our objectives in an environment of fairness, honesty, and courtesy towards our clients, employees, vendors and society\n ",
                    style: TextStyle(fontSize: 15.0, fontFamily: 'Abel'),textAlign: TextAlign.justify,),
                  Text(" \n \t \t  Infosys’ Vision Statement\t \t  \n ",
                    style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 15.0),),
              Text("\nTo be a globally respected corporation that provides best-of-breed business solutions,"
                    " leveraging technology, delivered by best-in-class people.\n",
                style: TextStyle(fontSize: 15.0, fontFamily: 'Abel'),textAlign: TextAlign.justify,),
              Text(" \n \t \t  Infosys Tagline \t \t \n ",
                style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 15.0),),
              Text("\n **** Powered by Intellect, Driven by Values ****\n",
                style: TextStyle(fontSize: 15.0, fontFamily: 'Abel'),),
                  Text(" \n \t\t  Headquarters of the Company \t \t \n ",
                    style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 15.0),),
                 Text("\nBangalore, Karnataka, India\n",
                   style: TextStyle(fontSize: 15.0, fontFamily: 'Abel'),),
                  Text(" \n \t  Infosys Products and Services Offered \t \n ",
                    style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 15.0),),
                  Text("\nInfosys provides software development and its maintenance services to a wide array of companies from different fields such as insurance, "
                    "finance, manufacturing etc. Some of the important work related platforms used in Infosys are\n"
              " \n •	Mana which is now called NIA - Next Generation Integrated AI Platform."
              " \n •	Edge Verve Systems which includes Finacle, a banking solution with various modules related to corporate & retail banking."
              " \n •	Infosys' own analytics platform called as Infosys Information Platform."
              " \n •	Infosys consulting is a global management consulting service.\n",
                    style: TextStyle(fontSize: 15.0, fontFamily: 'Abel'),textAlign: TextAlign.justify,),
              Text(" \n \t \t  Infosys Awards and Recognition \t \t \n ",
                style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 15.0),),
              Text("\n•	Infosys won the Platinum Award at the Asset Corporate awards."
              " \n •	At the 13th Indo-American Corporate Excellence Awards 2017, Infosys won the Responsible Business and the Indo-U.S.\n",
                style: TextStyle(fontSize: 15.0, fontFamily: 'Abel'),textAlign: TextAlign.justify,),
              Text(" \n \t \t  Trade Driver of the Year Awards.\t \t  \n ",
                style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 15.0),),
              Text("\n•	Infosys tax team won the “Asia’s best in-house tax team” award for the year 2017 awarded by Euromoney."
              " \n •	Infosys won the Golden Peacock Environment Management award for the year 2017."
              " \n •	Infosys won the awards for Best CEO, Best CFO and Best Investor Relations for the year 2017 in All Asia Executive Team Rankings"
                    " by Institutional Investor magazine in the field of Technology/IT Services."
              " \n •	Infosys won the Best Company in India at the 20th Finance Asia Platinum Awards for the year 2016 \n ",
                style: TextStyle(fontSize: 15.0, fontFamily: 'Abel'),textAlign: TextAlign.justify,),
              ]),
            ),
          )
        ],
      ),
    );
  }

}