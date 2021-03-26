import 'package:bmi_calculator/components/calculator_brain.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/screens/info_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/constants.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import '../components/bottom_button.dart';
import '../components/round_icon_button.dart';

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
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.info_outline_rounded,
              color: Colors.white,
              size: 28,
            ),
            padding: EdgeInsets.only(right: 13),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return InfoPage();
              }));
            },
          )
        ],
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
                    activeColor: selectedGender == Gender.male
                        ? Colors.blue
                        : selectedGender == Gender.female
                            ? Colors.pink
                            : Colors.deepPurpleAccent.shade700,
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
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: FontAwesomeIcons.minusCircle,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: FontAwesomeIcons.plusCircle,
                            )
                          ])
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: kactiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: klabelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kNumberTextSyle,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              icon: FontAwesomeIcons.minusCircle,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: FontAwesomeIcons.plusCircle,
                            )
                          ])
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        BottomButton(
          buttonTitle: 'CALCULATE',
          colour: selectedGender == Gender.male
              ? Colors.blue.shade700
              : selectedGender == Gender.female
                  ? Colors.pink.shade600
                  : Colors.deepPurpleAccent.shade700,
          onTap: () {
            CalculatorBrain calc =
                CalculatorBrain(height: height, weight: weight);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ResultPage(
                    bmiResult: calc.calculateBMI(),
                    resultText: calc.getResult(),
                    interpretation: calc.getInterpretation(),
                    colour: selectedGender == Gender.male
                        ? Colors.blue.shade700
                        : selectedGender == Gender.female
                            ? Colors.pink.shade600
                            : Colors.deepPurpleAccent.shade700,
                  );
                },
              ),
            );
          },
        )
      ]),
    );
  }
}
