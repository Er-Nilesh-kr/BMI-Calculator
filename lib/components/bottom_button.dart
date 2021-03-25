import 'package:flutter/material.dart';
import '../components/constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;
  final Color colour;

  BottomButton({@required this.onTap, @required this.buttonTitle, this.colour});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
            textAlign: TextAlign.center,
          ),
          padding: EdgeInsets.only(top: 25.0),
          color: colour,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: kbottomContainerHeight,
        ),
      ),
    );
  }
}
