import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color kCardColor = Color(0xFFC7493A);
const Color kActiveCardColor = Color.fromRGBO(255, 255, 255, 0.4);
const Color kBottomContainerColor = Color(0xFF96BFA8);

const Color kIconColor = Color(0xFFFDFAFA);
const TextStyle kTextLabelColor =
    TextStyle(fontSize: 17.0, color: kIconColor, fontWeight: FontWeight.bold);

const TextStyle kTextLabelSlider =
    TextStyle(fontSize: 38.0, fontWeight: FontWeight.bold);

const Color kActiveTrackColor = Color(0xFFFFCF70);
const Color kActiveTrackOverlayColor = Color(0x29D6D5CD);

const Widget plusIcon = Icon(FontAwesomeIcons.plusCircle, size: 45.0, color: kIconColor);
const Widget minusIcon = Icon(FontAwesomeIcons.minusCircle, size: 45.0, color: kIconColor);
