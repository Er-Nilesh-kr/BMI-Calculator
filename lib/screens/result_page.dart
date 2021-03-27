import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/constants.dart';

class ResultPage extends StatelessWidget {
  final String resultText;
  final String bmiResult;
  final String interpretation;
  final Color colour;

  ResultPage(
      {@required this.resultText,
      @required this.bmiResult,
      @required this.interpretation,
      this.colour});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(13.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kactiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle.copyWith(
                        color: resultText == 'Normal'
                            ? Color(0xFF24D876)
                            : Colors.red),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    interpretation,
                    textAlign: resultText == 'Normal'
                        ? TextAlign.center
                        : TextAlign.start,
                    style: kBodyTextStyle.copyWith(
                        fontSize: resultText == 'Normal' ? 23 : 18),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              colour: colour,
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}
