import 'package:flutter/widgets.dart';

const Color iconColor = Color(0xFFFDFAFA);

class contentIcon extends StatelessWidget {
  final IconData icon;
  final String content;

  contentIcon(this.icon, this.content);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(this.icon, size: 85.0, color: iconColor),
        SizedBox(height: 15.0),
        Text(this.content,
            style: TextStyle(
                fontSize: 12.0, color: iconColor, fontWeight: FontWeight.bold))
      ],
    );
  }
}
