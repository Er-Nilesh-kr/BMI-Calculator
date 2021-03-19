import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Colors.white54,
);

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color icolor;

  IconContent({this.icon, this.label, this.icolor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 83.0,
          color: icolor,
        ),
        SizedBox(
          height: 13.0,
        ),
        Text(
          label,
          style: labelTextStyle,
        )
      ],
    );
  }
}
