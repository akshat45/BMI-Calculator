import 'package:flutter/material.dart';
import 'dart:math';

class Calculator_Brain {
  Calculator_Brain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else
      return 'UnderWeight';
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weights. Try to exercise more. ';
    } else if (_bmi > 18.5) {
      return 'You have a  normal body weight. Good Job!';
    } else
      return 'Your BMI Result is quite low you should eat more';
  }
}
