import 'package:flutter/widgets.dart';

import 'constants.dart';

class contentIcon extends StatelessWidget {
  final IconData icon;
  final String content;

  contentIcon(this.icon, this.content);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(this.icon, size: 85.0, color: kIconColor),
        SizedBox(height: 15.0),
        Text(this.content,
            style: kTextLabelColor)
      ],
    );
  }
}

enum Gender {
  MALE, FEMALE
}
