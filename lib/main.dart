import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kBottomContainerColor,
        scaffoldBackgroundColor: Color(0xFF844257),
        accentColor: Colors.amberAccent,
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white)
        )
      ),
      home: InputPage(),
    );
  }
}

