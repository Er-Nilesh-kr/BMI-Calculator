import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({@required this.height, @required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obese';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return '⭐ Consume less processed/sugary foods.\n\n⭐ Eat more vegetables and fruits.\n\n⭐ Eat plenty of dietary fiber.\n\n⭐ Engage in regular aerobic activity.\n\n⭐ Focus on reducing daily stress';
    } else if (_bmi >= 25) {
      return '⭐ Consume less processed/sugary foods.\n\n⭐ Eat more vegetables and fruits.\n\n⭐ Eat plenty of dietary fiber.\n\n⭐ Engage in regular aerobic activity.\n\n⭐ Focus on reducing daily stress';
    } else if (_bmi > 18.5) {
      return 'You have a normal BMI.\nGood job!';
    } else {
      return '⭐ Eat more calories than you burn off.\n\n⭐ Eat nutritious foods and drinks.\n\n⭐ Consume less processed/sugary foods.\n\n⭐ Exercise to increase your muscle mass.';
    }
  }
}
