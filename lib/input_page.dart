import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                child: ReusableCard(colour: Color(0xFFC7493A)),
              ),
              Expanded(child: ReusableCard(colour: Color(0xFFC7493A))),
            ]),
          ),
          Expanded(
            child: Row(children: <Widget>[Expanded(child: ReusableCard(colour: Color(0xFFC7493A)))]),
          ),
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                child: ReusableCard(colour: Color(0xFFC7493A)),
              ),
              Expanded(
                child: ReusableCard(colour: Color(0xFFC7493A)),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
 Color colour;

 ReusableCard({this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour,
            borderRadius: BorderRadius.circular(10.0)));
  }
}
