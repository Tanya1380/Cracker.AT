import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Capgemini extends StatefulWidget{
  @override
  _CapgeminiState createState() => _CapgeminiState();

}
class _CapgeminiState extends State<Capgemini>{
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
              AssetImage("images/c1.jpg"),
              AssetImage("images/c2.jpg"),
              AssetImage("images/c3.png"),
              AssetImage("images/c4.jpg"),
              AssetImage("images/c5.jpg")
            ], indicatorBgPadding: 1.0,
          ),
        ));
    return Scaffold(
      appBar: AppBar(title:
      Text("\t \t CAPGEMINI \t \t ", style: TextStyle(fontFamily: 'Abel')),
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
                  Text(
                    "Capgemini is a French multinational company situated in Paris, France. "
                        "The company is an EUR 12.5 billion( revenue FY 2016) global market leader in the field of business consulting,"
                        " technology and outsourcing services."
                        " Capgemini helps its clients by developing their business with the help of technology and digital solutions that fit their needs,"
                        " thus enabling them to achieve competitiveness and innovation. Capgemini has over 200,000 employees in over 40 countries, of whom 100,000 are in India..\n ",
                style: TextStyle(fontSize: 15.0, fontFamily: 'Abel'), textAlign: TextAlign.justify,
            ),
                  Text(
                    " \n \t \t \t Capgemini History \t \t \t \n",
                    style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 15.0),
                  ),
                  Text(
                    " \n Capgemini was founded by Serge Kampf in the year 1967, as a data processing company. The company was initially inaugurated as Sogeti."
                    "\n•	In 1974 Sogeti acquired Gemini computer systems, a US company based in New York."
                  "\n•	In 1975 with the acquisition of both CAP and Gemini Computer Sytems, Sogeti renamed itself as CAP Gemini Sogeti."
                  "\n•	In the year 1996, the name of CAP Gemini Sogeti was simplified to CAP Gemini along with a new company logo. All operating companies were re-branded to operate as Capgemini."
                  "\n•	In the year 2002, Capgemini reintroduced its Sogeti brand, thus creating a new entity in the market headquartered in Brussels, Belgium. "
                        "The new company is focused on delivering  IT services to a specific range of markets.\n",
                    style: TextStyle(fontSize: 15.0, fontFamily: 'Abel'),textAlign: TextAlign.justify,
                  ),
                  Text(
                    " \n \t \t \t Organisation Head \t \t \t \n",
                      style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 15.0)
                  ),
                  Text(
                    "\n1.  Paul Hermelin is the CEO and Chairman of Capgemini."
                    "\n2.  Thierry Delaporte is the Chief Operating Officer."
                    "\n3.  Aiman Ezzat is the Chief Financial Officer.",
                    style: TextStyle(fontSize: 15.0, fontFamily: 'Abel'),textAlign: TextAlign.justify,
                  ),
                  Text(
                    " \n \t \t Geographical Presence \t \t \n",
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 15.0, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "\n Capgemini is a multicultural international company which is present in over 40 countries worldwide."
                        "\n Capgemini has presence across entire India"
                        "\n•	Bangalore"
                        "\n•	Chennai"
                        "\n•	Gurgaon"
                        "\n•	Hyderabad"
                        "\n•	Gandhinagar"
                        "\n•	Mumbai"
                        "\n•	Kolkata"
                        "\n•	Pune"
                        "\n•	Noida"
                        "\n•	Salem"
                        "\n•	Trichy\n",
                    style: TextStyle(fontFamily: 'Abel', fontSize: 15.0),
                  ),
                  Text(
                    "\n \t \t \tCapgemini Vision Statement \t \t \t \n",
                      style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 15.0)
                  ),
                  Text(
                    "\n The business value of technology comes from and through people.",
                    style: TextStyle(fontSize: 15.0, fontFamily: 'Abel'),
                  ),
                  Text(
                    "\n \t \t \t Capgmini' Mission Statement \t \t \t \n",
                    style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w700, fontSize: 15.0),
                  ),
                  Text(
                    "\n With you, we create and deliver business and technology solutions that fit your needs and drive the results you want",
                    style: TextStyle(fontSize: 15.0, fontFamily: 'Abel'),textAlign: TextAlign.justify,
                  ),
                  Text(
                    "\n \t Capgemini Products and services offered \t \n",
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 15.0, fontWeight: FontWeight.w700),
                  ),
                  Text(
                  "\n1.  Technology Services: Capgemini offers technological services that help design, develop and implement a wide array of technological projects which involve complex system integration."
                  "\n2.  Outsourcing Services: Capgemini outsourcing services manage IT systems for applications and infrastructure of clients and their associated business processes."
                  "\n3.  Local Professional Services: The company delivers technological services to suit local requirements for infrastructure, engineering, and operations.",
                    style: TextStyle(fontFamily: 'Abel', fontSize: 15.0), textAlign: TextAlign.justify
                  ),
                  Text(
                    " \n \t Capgemini Awards and Recogintion \t \n",
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 15.0, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "\n•	In 2017, Capgemini received Citrix system integrator award for My Workspace Services."
                    "\n•	Capgemini received Partner Award Winners at Connect 2017."
                    "\n•	Capgemini group was honored by IBM for outstanding partnership award for security in 2017."
                    "\n•	In 2017, Capgemini won the Pega Partner award for partner excellence in accelerating growth."
                    "\n•	Capgemini receives SAP North America Partner Excellence Award 2016 for industry services.",
                    style: TextStyle(fontFamily: 'Abel', fontSize: 15.0),textAlign: TextAlign.justify,
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