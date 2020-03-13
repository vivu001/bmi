import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color kTransparent = Color(0x00000000);
const Color kCardColor = Color(0xFF33444e);
const Color kActiveCardColor = Color.fromRGBO(255, 255, 255, 0.4);
const Color kBottomContainerColor = Color(0xFF1B1C2A);
const Color kIconColor = Color(0xFFFDFAFA);
const Color kActiveTrackColor = Color(0xFFFFCF70);
const Color kActiveTrackOverlayColor = Color(0x29D6D5CD);

const TextStyle kTextLabelColor =
    TextStyle(fontSize: 18.0, color: kIconColor, fontWeight: FontWeight.bold);

const TextStyle kTextLabelSlider =
    TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold);

const TextStyle kTextLabelBottom = TextStyle(
    fontSize: 23.0,
    fontWeight: FontWeight.bold,
    color: kIconColor,
    shadows: [
      Shadow(
        blurRadius: 10.0,
        color: kActiveTrackColor,
        offset: Offset(2.0, 2.0),
      ),
    ]);

const TextStyle kResult = TextStyle(
    fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xFF51F655));
const TextStyle kBMIResult = TextStyle(
    fontSize: 50,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
    color: Color(0xFFF6EF2C));
