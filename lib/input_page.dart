import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'content_icon.dart';

const Color cardColor = Color(0xFFC7493A);
const Color activeCardColor = Color.fromRGBO(255, 255, 255, 0.5);
const Color bottomContainerColor = Color(0xFFFFCF70);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = cardColor;
  Color femaleColor = cardColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    changeColor('M');
                  });
                },
                child: ReusableCard(
                    colour: maleColor,
                    cardChild: contentIcon(FontAwesomeIcons.mars, 'MALE')),
              )),
              Expanded(
                  child: GestureDetector(
                onTap: () {
                  setState(() {
                    changeColor('F');
                  });
                },
                child: ReusableCard(
                    colour: femaleColor,
                    cardChild: contentIcon(FontAwesomeIcons.venus, 'FEMALE')),
              ))
            ]),
          ),
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                  child: ReusableCard(
                      colour: activeCardColor,
                      cardChild: contentIcon(FontAwesomeIcons.mars, 'HEIGHT')))
            ]),
          ),
          Expanded(
            child: Row(children: <Widget>[
              Expanded(child: ReusableCard(colour: activeCardColor)),
              Expanded(child: ReusableCard(colour: activeCardColor))
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

  void changeColor(final String gender) {
    if (gender == 'M') {
      femaleColor = maleColor;
      maleColor = activeCardColor;
    } else {
      maleColor = femaleColor;
      femaleColor = activeCardColor;
    }
  }
}
