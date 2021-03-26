import 'package:bmi_calculator/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 1, top: 29),
            alignment: Alignment.center,
            child: Text(
              'What is BMI?',
              style: kInfoTextStyle,
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(9.0),
                color: kactiveCardColour,
                margin: EdgeInsets.all(10.0),
                child: Text(
                  "BMI(Body Mass Index), is a calculation that is used in healthcare as an indirect method to determine a person's body fat category.\nThis BMI calculator can help you in getting your BMI checked.\n\nBMI below 18.5 = Underweight\nBMI 18.5 – 24.9 = Normal weight\nBMI 25.0 – 29.9 = Overweight\nBMI 30.0 and above = Obese",
                  style: kAboutBMITextStyle,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 29, bottom: 5),
            alignment: Alignment.center,
            child: Text(
              'About Developer',
              style: kInfoTextStyle,
            ),
          ),
          Column(
            children: [
              SocialLinks(
                icon: Icons.email,
                username: "allmailtonilesh@gmail.com",
              ),
              SocialLinks(
                icon: FontAwesomeIcons.linkedin,
                username: "linkedin.com/in/er-nilesh-kr",
              ),
              SocialLinks(
                icon: FontAwesomeIcons.instagram,
                username: "@iam__nilesh_",
              ),
              SocialLinks(
                icon: FontAwesomeIcons.github,
                username: "Er-Nilesh-kr",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SocialLinks extends StatelessWidget {
  final String username;
  final IconData icon;

  SocialLinks({this.icon, this.username});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 27,
        ),
        Container(
          padding: EdgeInsets.all(3.0),
          color: kactiveCardColour,
          margin: EdgeInsets.only(bottom: 24, top: 3),
          child: Text(
            username,
            style: kAboutBMITextStyle,
          ),
        )
      ],
    );
  }
}
