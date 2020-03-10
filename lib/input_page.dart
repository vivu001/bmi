import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color cardColor = Color(0xFFC7493A);
const Color iconColor = Color(0xFFDCDCDA);
const Color activeCardColor = Color(0xFFFFFFFF);
const Color bottomContainerColor = Color(0xFFFFCF70);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(FontAwesomeIcons.mars, size: 85.0, color: iconColor),
//                      SizedBox(height: 20.0),
                      Text('MALE',
                          style: TextStyle(
                              fontSize: 12.0,
                              color: iconColor,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
              Expanded(child: ReusableCard(colour: cardColor))
            ]),
          ),
          Expanded(
            child: Row(children: <Widget>[
              Expanded(child: ReusableCard(colour: cardColor))
            ]),
          ),
          Expanded(
            child: Row(children: <Widget>[
              Expanded(child: ReusableCard(colour: cardColor)),
              Expanded(child: ReusableCard(colour: cardColor))
            ]),
          ),
          Container(
              color: Color(0xFFFFCF70),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0)
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  ReusableCard({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)));
  }
}
