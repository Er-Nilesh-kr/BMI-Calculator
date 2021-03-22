import 'package:bmi_calculator/icon_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  Color icolor = Colors.white;
  int height = 180;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                colour: selectedGender == Gender.male
                    ? kactiveCardColour
                    : kinactiveCardColour,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.male,
                  label: 'MALE',
                  icolor: selectedGender == Gender.male
                      ? Colors.blue
                      : Colors.white,
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                },
                colour: selectedGender == Gender.female
                    ? kactiveCardColour
                    : kinactiveCardColour,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.female,
                  label: 'FEMALE',
                  icolor: selectedGender == Gender.female
                      ? Colors.pink
                      : Colors.white,
                ),
              ),
            )
          ],
        )),
        Expanded(
          child: ReusableCard(
            colour: kactiveCardColour,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: klabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kNumberTextSyle,
                    ),
                    Text(
                      ' cm',
                      style: klabelTextStyle,
                    )
                  ],
                ),
                Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 250.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    })
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: kactiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: klabelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: kNumberTextSyle,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(colour: kactiveCardColour),
              )
            ],
          ),
        ),
        Container(
          color: kbottomContainerColour,
          margin: EdgeInsets.only(top: 10.0),
          width: double.infinity,
          height: kbottomContainerHeight,
        )
      ]),
    );
  }
}
