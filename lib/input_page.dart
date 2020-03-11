import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'content_icon.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = kCardColor;
  Color femaleColor = kCardColor;
  double _height = 165.0;
  double _weight = 50.0;
  int _age = 20;

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
                      colour: maleColor,
                      cardChild: contentIcon(FontAwesomeIcons.mars, 'MALE'),
                      onPress: () {
                        setState(() {
                          changeColor(Gender.MALE);
                        });
                      })),
              Expanded(
                  child: ReusableCard(
                      colour: femaleColor,
                      cardChild: contentIcon(FontAwesomeIcons.venus, 'FEMALE'),
                      onPress: () {
                        setState(() {
                          changeColor(Gender.FEMALE);
                        });
                      }))
            ]),
          ),
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                  child: ReusableCard(
                colour: (maleColor == kActiveCardColor ||
                        femaleColor == kActiveCardColor)
                    ? kActiveCardColor
                    : kCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('HEIGHT', style: kTextLabelColor),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          _height.toStringAsFixed(1),
                          style: kTextLabelSlider,
                        ),
                        Text('cm', style: kTextLabelColor),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: kActiveTrackColor,
                          inactiveTrackColor: kActiveCardColor,
                          thumbColor: kActiveTrackColor,
                          overlayColor: kActiveTrackOverlayColor,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 14.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 28.0)),
                      child: Slider(
                          value: _height,
                          min: 20,
                          max: 200,
                          label: '$_height',
                          onChanged: (double newValue) {
                            setState(() {
                              _height = newValue;
                            });
                          }),
                    )
                  ],
                ),
              )),
            ]),
          ),
          Expanded(
            child: Row(children: <Widget>[
              Expanded(
                  child: ReusableCard(
                      colour: (maleColor == kActiveCardColor ||
                              femaleColor == kActiveCardColor)
                          ? kActiveCardColor
                          : kCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('WEIGHT', style: kTextLabelColor),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                _weight.toStringAsFixed(1),
                                style: kTextLabelSlider,
                              ),
                              Text('kg', style: kTextLabelColor),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              IconButton(icon: minusIcon, onPressed: null),
                              IconButton(icon: plusIcon, onPressed: null),
                            ],
                          ),
                        ],
                      ))),
              Expanded(
                  child: ReusableCard(
                      colour: (maleColor == kActiveCardColor ||
                              femaleColor == kActiveCardColor)
                          ? kActiveCardColor
                          : kCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('AGE', style: kTextLabelColor),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(
                                _age.toString(),
                                style: kTextLabelSlider,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              IconButton(icon: minusIcon, onPressed: null),
                              IconButton(icon: plusIcon, onPressed: null),
                            ],
                          ),
                        ],
                      ))),
            ]),
          ),
          Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0)
        ],
      ),
    );
  }

  void changeColor(final Gender gender) {
    if (gender == Gender.MALE) {
      femaleColor = maleColor;
      maleColor = kActiveCardColor;
    } else if (gender == Gender.FEMALE) {
      maleColor = femaleColor;
      femaleColor = kActiveCardColor;
    }
  }
}
