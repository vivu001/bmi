import 'package:bmi_calculator/Calculator.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {

  final Calculator calc;

  ResultPage(this.calc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI RESULT')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text('Your Result', style: kTextLabelSlider),
              padding: EdgeInsets.all(15.0),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(calc.getResultAsEnum().toString().split('.').last, style: kResult),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(calc.calculateBMI().toStringAsFixed(1), style: kBMIResult),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(calc.getAdvice(), style: kTextLabelColor, textAlign: TextAlign.center,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              title: 'BMI INPUT',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InputPage()));
              }),
        ],
      ),
    );
  }
}

enum Result { UNDERWEIGHT, NORMAL, OVERWEIGHT, OBESE }
