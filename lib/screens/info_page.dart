import 'package:bmi_calculator/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoPage extends StatelessWidget {
  final Color colour;

  InfoPage({this.colour});

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
            margin: EdgeInsets.only(bottom: 3, top: 7),
            alignment: Alignment.center,
            child: Text(
              'What is BMI?',
              style: kInfoTextStyle,
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: 11.0, bottom: 11.0, left: 8.0, right: 8.0),
                color: kactiveCardColour,
                margin: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Text(
                  "BMI(Body Mass Index), is a calculation that is used in healthcare as an indirect method to determine a person's body fat category.\nThis BMI calculator can help you in getting your BMI checked.\n\n\nBMI below 18.5 :  Underweight\n\nBMI 18.5 – 24.9 :  Normal weight\n\nBMI 25.0 – 29.9 :  Overweight\n\nBMI 30.0 and above :  Obese",
                  style: kAboutBMITextStyle,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 19),
            alignment: Alignment.center,
            child: Text(
              'Contact Developer',
              style: kInfoTextStyle,
            ),
          ),
          Column(
            children: [
              SocialLinks(
                icon: Icons.email,
                username: "allmailtonilesh@gmail.com",
                colour: colour,
              ),
              SocialLinks(
                icon: FontAwesomeIcons.linkedin,
                username: "linkedin.com/in/er-nilesh-kr",
                colour: colour,
              ),
              SocialLinks(
                icon: FontAwesomeIcons.instagram,
                username: "@iam__nilesh_",
                colour: colour,
              ),
              SocialLinks(
                icon: FontAwesomeIcons.github,
                username: "Er-Nilesh-kr",
                colour: colour,
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
  final Color colour;

  SocialLinks({this.icon, this.username, this.colour});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 16,
            ),
            Icon(
              icon,
              size: 30,
              color: colour,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              padding: EdgeInsets.all(3.0),
              child: Text(
                username,
                style: kAboutBMITextStyle,
                textAlign: TextAlign.right,
              ),
            )
          ],
        )
      ],
    );
  }
}
