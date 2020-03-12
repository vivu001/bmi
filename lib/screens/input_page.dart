import 'package:bmi_calculator/components/content_icon.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/bottom_button.dart';
import '../components/round_button.dart';
import '../constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = kCardColor;
  Color femaleColor = kCardColor;
  Gender _currentGender = Gender.MALE;
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
                          chooseGender();
                        });
                      })),
              Expanded(
                  child: ReusableCard(
                      colour: femaleColor,
                      cardChild: contentIcon(FontAwesomeIcons.venus, 'FEMALE'),
                      onPress: () {
                        setState(() {
                          chooseGender(gender: Gender.FEMALE);
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
                              RoundButton(
                                  iconData: FontAwesomeIcons.minusCircle,
                                  onPressed: () {
                                    setState(() {
                                      if (_weight > 1) _weight -= 0.5;
                                    });
                                  }),
                              RoundButton(
                                  iconData: FontAwesomeIcons.plusCircle,
                                  onPressed: () {
                                    setState(() {
                                      if (_weight < 250) _weight += 0.5;
                                    });
                                  }),
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
                              RoundButton(
                                  iconData: FontAwesomeIcons.minusCircle,
                                  onPressed: () {
                                    setState(() {
                                      if (_age > 1) _age--;
                                    });
                                  }),
                              RoundButton(
                                  iconData: FontAwesomeIcons.plusCircle,
                                  onPressed: () {
                                    setState(() {
                                      if (_age < 120) _age++;
                                    });
                                  }),
                            ],
                          ),
                        ],
                      ))),
            ]),
          ),
          BottomButton(
              title: 'BMI Calculate',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResultPage()));
              }),
        ],
      ),
    );
  }

  void chooseGender({final Gender gender}) {
    if (gender == Gender.FEMALE) {
      _currentGender = Gender.MALE;
      maleColor = femaleColor;
      femaleColor = kActiveCardColor;
    } else {
      _currentGender = Gender.FEMALE;
      femaleColor = maleColor;
      maleColor = kActiveCardColor;
    }

    /* if (gender == Gender.MALE) {
      femaleColor = maleColor;
      maleColor = kActiveCardColor;
    } else if (gender == Gender.FEMALE) {
      maleColor = femaleColor;
      femaleColor = kActiveCardColor;
    }*/
  }

  double bmiCalculate() {
    return _weight * 10000 / (_height * _height);
  }
}
