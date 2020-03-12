import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  double _result;

  ResultPage(this._result);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI RESULT')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[Text('Your Result')],
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Normal', style: kTextLabelSlider)
                ],
              ),
            ),
          )
        ],
      ),
      bottomSheet: BottomAppBar(
        child: GestureDetector(onTap: () {
          Navigator.pop(context);
        }),
      ),
    );
  }
}

enum Result { UNDERWEIGHT, NORMAL, OVERWEIGHT, OBESE }
