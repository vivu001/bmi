import 'package:flutter/material.dart';

import '../constants.dart';

class RoundButton extends StatelessWidget {
  final IconData iconData;
  final Function onPressed;

  RoundButton({@required this.iconData, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        heroTag: null,
        child: Icon(iconData, size: 37.0, color: kIconColor),
        backgroundColor: kTransparent,
        splashColor: kActiveTrackColor,
        onPressed: onPressed);
  }
}
