import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

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
          style: klabelTextStyle,
        )
      ],
    );
  }
}
